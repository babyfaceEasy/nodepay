$(document).ready(function() {
	$('#amountss').on('keyup keypress', function(e) {
		if (e.type=="keyup") {
			var token = $("#token").val();
	    	$.ajax({
				method: "POST",
				url: SITE_URL+"/feeTransfer",
				dataType: "json",
				data: { "_token":token,'type':'Transfer' }
			})
			.done(function(response) {
				if(response.status == 1)
				{
					var feeInfo = response.fees;

					var amount = $("#amount").val();

					$("#percentage_fee").val(percentage_fee());
					$("#fixed_fee").val(fixed_fee());
					$(".total_fees").val(total_fees());
					$('.total_fees').html(total_fees());

					function percentage_fee() {
						var percentage_fee  = parseInt(feeInfo.charge_percentage);
						var p_calculated = (amount*percentage_fee)/100;
						return roundValues(p_calculated,2);
					}

					function fixed_fee() {
						var fixed_fee = parseInt(feeInfo.charge_fixed);
						return roundValues(fixed_fee,2);
					}

					// total_fees
					function total_fees() {
						var int_perc_fee  = parseInt(feeInfo.charge_percentage);
						var int_fixed_fee = parseInt(feeInfo.charge_fixed);

						var p_calc = (amount*int_perc_fee)/100;
						var total_fees = p_calc + int_fixed_fee;
						return roundValues(total_fees,2);
					}
				}
			});
			//roundValues
			function roundValues(value,decimals)
			{
				return Number(Math.round(value+'e'+decimals)+'e-'+decimals).toFixed(3).slice(0, -1);
			}

		} else {
			var token = $("#token").val();
	    	$.ajax({
				method: "POST",
				url: SITE_URL+"/feeTransfer",
				dataType: "json",
				data: { "_token":token,'type':'Transfer' }
			})
			.done(function(response) {
				if(response.status == 1)
				{
					var feeInfo = response.fees;

					var amount = $("#amount").val();

					$("#percentage_fee").val(percentage_fee());
					$("#fixed_fee").val(fixed_fee());
					$(".total_fees").val(total_fees());
					$('.total_fees').html(total_fees());

					function percentage_fee() {
						var percentage_fee  = parseInt(feeInfo.charge_percentage);
						var p_calculated = (amount*percentage_fee)/100;
						return roundValues(p_calculated,2);
					}

					function fixed_fee() {
						var fixed_fee = parseInt(feeInfo.charge_fixed);
						return roundValues(fixed_fee,2);
					}

					// total_fees
					function total_fees() {
						var int_perc_fee  = parseInt(feeInfo.charge_percentage);
						var int_fixed_fee = parseInt(feeInfo.charge_fixed);

						var p_calc = (amount*int_perc_fee)/100;
						var total_fees = p_calc + int_fixed_fee;
						return roundValues(total_fees,2);
					}
				}
			});
			//roundValues
			function roundValues(value,decimals)
			{
				return Number(Math.round(value+'e'+decimals)+'e-'+decimals).toFixed(3).slice(0, -1);
			}
		}
	});

	$("#receiverss").on('keyup keypress', function(e)
    {
       
       if (e.type=="keyup" || e.type=="keypress")
       {
            var receiver = $('#receiver').val();
            $.ajax({
                headers:
                {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: SITE_URL+"/transferEmailValidate",
                dataType: "json",
                data: {
                    'receiver': receiver,
                }
            })
            .done(function(response)
            {
                console.log(response);
                if (response.status == true)
                {
                    // emptyEmail();
                    if (validateEmail(receiver))
                    {
                        $('#receiver_error').addClass('text-danger').html(response.fail).css({'font-size':'14px', 'font-weight':'Bold'});
                        $('form').find("button[type='submit']").prop('disabled',true);
                    } else {
                        $('#receiver_error').removeClass('text-danger').html('');
                    }
                }else {
                	$('#receiver_error').removeClass('text-danger').html('');
                	$('form').find("button[type='submit']").prop('disabled',false);
                }

                /**
                 * [validateEmail description]
                 * @param  {null} email [regular expression for email pattern]
                 * @return {null}
                 */
                function validateEmail(receiver) {
                  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                  return re.test(receiver);
                }
            });
       }
    });
});