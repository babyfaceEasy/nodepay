<?php
/**
 * Email Controller
 */
namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Models\EmailConfig;
use App\Models\User;
use Config;
use DB;
use Mail;
use PHPMailer\PHPMailer\PHPMailer;

class EmailController extends Controller
{

    public function sendEmail($to, $subject, $message)
    {
        $mail = new \App\libraries\MailService();
        $data = [];
        $data = array(
            'to'      => array($to),
            'subject' => $subject,
            'content' => $message,
        );

        $emailConfig = DB::table('settings')->where(['type' => 'email', 'name' => 'driver'])->first();

        if ($emailConfig->value == 'smtp')
        {
            $this->setupEmailConfig();
            $mail->send($data, 'emails.sendmail');
        }
        else
        {
            $emailInfo = EmailConfig::select('from_address','from_name')->where('id', 1)->first();
            // dd($emailInfo);
            $this->sendPhpEmail($to, $subject, $message, $emailInfo);
        }
    }

    // Newly Added
    public function sendEmailWithAttachment($to, $subject, $messageBody, $path, $attachedFile)
    {
        $mail     = new \App\libraries\MailService();
        $dataMail = [];

        $dataMail = array(
            'to'      => array($to),
            'subject' => $subject,
            'content' => $messageBody,
            'attach'  => url('public/'.$path.'/'.$attachedFile),
        );

        $emailConfig = DB::table('settings')->where(['type' => 'email', 'name' => 'driver'])->first();
        if ($emailConfig->value == 'smtp')
        {
            $this->setupEmailConfig();
            //for UTF-8
            $mail->CharSet = 'UTF-8';
            $mail->Encoding = 'base64';
            //
            $mail->send($dataMail, 'emails.sendmail');
        }
        else
        {
            $emailInfo = EmailConfig::select('from_address','from_name')->where('id', 1)->first();
            $this->sendPhpEmail($to, $subject, $messageBody, $emailInfo, $path, $attachedFile);
        }
    }

    // Newly Added
    public function sendPhpEmail($to, $subject, $message, $emailInfo, $path=null, $attachedFile=null)
    {
        // dd($path);

        require 'vendor/autoload.php';
        $mail = new PHPMailer(true);

        $user = User::where('email', $to)->first();
        $mail->From     = $emailInfo->from_address;
        $mail->FromName = $emailInfo->from_name;
        $mail->AddAddress($to, isset($user) ? $user->first_name . ' ' . $user->last_name: 'N/A');
        $mail->WordWrap = 50;
        $mail->IsHTML(true);
        $mail->Subject = $subject;
        $mail->Body = $message;

        //for UTF-8
        $mail->CharSet = 'UTF-8';
        $mail->Encoding = 'base64';
        //

        if (!empty($attachedFile))
        {
            // $mail->AddAttachment($path."/". $attachedFile, 'base64');
            $mail->AddAttachment(public_path('/'.$path.'/' . $attachedFile, 'base64'));
        }
        $mail->Send();
    }

    public function setupEmailConfig()
    {
        $result = DB::table('settings')->where(['type' => 'email'])->get();
        // d($result,1);

        Config::set([
            'mail.driver'     => isset($result[0]->value) ? $result[0]->value : '',
            'mail.host'       => isset($result[1]->value) ? $result[1]->value : '',
            'mail.port'       => isset($result[2]->value) ? $result[2]->value : '',
            'mail.from'       => ['address' => isset($result[3]->value) ? $result[3]->value : '', 'name' => isset($result[4]->value) ? $result[4]->value : ''],
            'mail.encryption' => isset($result[5]->value) ? $result[5]->value : '',
            'mail.username'   => isset($result[6]->value) ? $result[6]->value : '',
            'mail.password'   => isset($result[7]->value) ? $result[7]->value : '',
        ]);
    }
}
