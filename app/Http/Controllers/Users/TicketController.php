<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\EmailTemplate;
use App\Models\File;
use App\Models\Ticket;
use App\Models\TicketReply;
use App\Models\TicketStatus;
use App\Models\User;
use App\Models\Admin;
use Auth;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Session;

class TicketController extends Controller
{
    public function __construct(Ticket $ticket, EmailController $email, Common $helper)
    {
        $this->ticket = $ticket;
        $this->email  = $email;
        $this->helper = $helper;
    }

    public function index()
    {
        $data['menu'] = 'ticket';
        $data['tickets'] = Ticket::where(['user_id'=>Auth::user()->id])->orderBy('created_at','desc')->paginate(10);
        return view('user_dashboard.Ticket.index', $data);
    }

    public function create()
    {
        $data['menu'] = 'ticket';
        $data['ticket_statuses'] = TicketStatus::get();
        return view('user_dashboard.Ticket.add', $data);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $this->validate($request, [
            'subject' => 'required',
            'description' => 'required',
        ]);

        $admin = Admin::where('id',1)->first();

        $ticket = new Ticket();

        $ticket->admin_id = $admin->id;

        $ticket->user_id = Auth::user()->id;

        $ticket->ticket_status_id = 1;

        $ticket->subject = $request->subject;

        $ticket->message = $request->description;

        $ticket->code = 'TIC-' . strtoupper(str_random(6));

        $ticket->priority = $request->priority;

        $ticket->save();

        $this->helper->one_time_message('success', __('Ticket Created Successfully!'));
        return redirect()->intended('ticket/reply/'.$ticket->id);
    }

    public function reply($id)
    {
        // dd($id);

        $data['menu'] = 'ticket';

        $data['ticket'] = Ticket::find($id);

        $data['ticket_status'] = TicketStatus::get();

        $data['ticket_replies'] = TicketReply::where(['ticket_id' => $id])->orderBy('id', 'desc')->get();

        return view('user_dashboard.Ticket.reply', $data);
    }

    public function reply_store(Request $request)
    {
        $this->validate($request, [
            'description' => 'required',
            'file'    => 'mimes:docx,rtf,doc,pdf,png,jpg,jpeg,gif,bmp|max:10000',
        ]);


        $ticket = Ticket::find($request->ticket_id);
        $ticket->ticket_status_id = $request->status_id;
        $ticket->last_reply = date('Y-m-d H:i:s');
        $ticket->save();

        // Store in Ticket Replies Table
        $ticket_reply = new TicketReply();
        $ticket_reply->admin_id = $ticket->admin_id;
        $ticket_reply->user_id = Auth::user()->id;
        $ticket_reply->ticket_id = $request->ticket_id;
        $ticket_reply->user_type = 'user';
        $ticket_reply->message = $request->description;
        $ticket_reply->save();

        // Store in Files Table
        if ($request->hasFile('file'))
        {
            $fileName = $request->file('file');
            $originalName = $fileName->getClientOriginalName();
            $uniqueName = strtolower(time() . '.' . $fileName->getClientOriginalExtension());
            $file_extn = strtolower($fileName->getClientOriginalExtension());

            if ($file_extn == 'docx' || $file_extn == 'rtf' || $file_extn == 'doc' || $file_extn == 'pdf' || $file_extn == 'png'
            || $file_extn == 'jpg' || $file_extn == 'jpeg' || $file_extn == 'gif' || $file_extn == 'bmp')
            {
                $path = 'uploads/ticketFile';
                $uploadPath = public_path($path);
                $fileName->move($uploadPath, $uniqueName);

                $file = new File();
                $file->admin_id = $ticket->admin_id;
                $file->user_id = Auth::user()->id;
                $file->ticket_id = $request->ticket_id;
                $file->ticket_reply_id = $ticket_reply->id;
                $file->filename = $uniqueName;
                $file->originalname = $originalName;
                $file->type = $file_extn;
                $file->save();
            }
            else
            {
                $this->helper->one_time_message('error', 'Invalid File Format!');
            }
        }
        $this->helper->one_time_message('success', __('Ticket Reply Saved Successfully!'));
        return redirect()->back();
    }

    public function changeReplyStatus(Request $request)
    {
        $ticket                   = Ticket::find($request->ticket_id);
        $ticket->ticket_status_id = $request->status_id;
        $ticket->save();

        $status = TicketStatus::find($request->status_id);

        $data['status'] = $status->name;
        return json_encode($data);
    }

}
