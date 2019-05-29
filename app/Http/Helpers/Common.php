<?php
namespace App\Http\Helpers;

use App\Models\Permission;
use App\Models\PermissionRole;
use App\Models\RoleUser;
use Session;

class Common
{
    public function __construct()
    {
        setlocale(LC_ALL, 'en_US.UTF8');
    }

    public static function one_time_message($class, $message)
    {
        if ($class == 'error')
        {
            $class = 'danger';
        }
        Session::flash('alert-class', 'alert-' . $class);
        Session::flash('message', $message);
    }

    // key_value [key,value, collection]
    public static function key_value($key, $value, $collection)
    {
        $return_value = [];

        foreach ($collection as $row)
        {
            $return_value[$row[$key]] = $row[$value];
        }
        return $return_value;
    }

    /*
     * @param $user_id
     * @param $permissions
     * @static has_permission
     */
    public static function has_permission($user_id, $permissions = '')
    {
        // dd($user_id);

        $permissions = explode('|', $permissions);

        $permission_id = [];
        $i             = 0;

        $user_permissions = Permission::whereIn('name', $permissions)->get();
        foreach ($user_permissions as $value)
        {
            $permission_id[$i++] = $value->id;
        }

        $prefix = str_replace('/', '', request()->route()->getPrefix());
        if ($prefix == 'admin')
        {
            $user_type = 'Admin';
        }
        else
        {
            $user_type = 'User';
        }
        $role = RoleUser::where(['user_id' => $user_id, 'user_type' => $user_type])->first();

        if (count($permission_id) && isset($role->role_id))
        {
            $has_permit = PermissionRole::where('role_id', $role->role_id)->whereIn('permission_id', $permission_id);
            return $has_permit->count();
        }
        else
        {
            return 0;
        }
    }

    // for BackupController
    public function backup_tables($host, $user, $pass, $name, $tables = '*')
    {
        try {
            $con = mysqli_connect($host, $user, $pass, $name);
        }
        catch (Exception $e)
        {

        }

        if (mysqli_connect_errno())
        {
            $this->one_time_message('danger', "Failed to connect to MySQL: " . mysqli_connect_error());
            return 0;
        }

        if ($tables == '*')
        {
            $tables = array();
            $result = mysqli_query($con, 'SHOW TABLES');
            while ($row = mysqli_fetch_row($result))
            {
                $tables[] = $row[0];
            }
        }
        else
        {
            $tables = is_array($tables) ? $tables : explode(',', $tables);
        }

        $return = '';
        foreach ($tables as $table)
        {
            $result     = mysqli_query($con, 'SELECT * FROM ' . $table);
            $num_fields = mysqli_num_fields($result);

            $row2 = mysqli_fetch_row(mysqli_query($con, 'SHOW CREATE TABLE ' . $table));
            $return .= "\n\n" . str_replace("CREATE TABLE", "CREATE TABLE IF NOT EXISTS", $row2[1]) . ";\n\n";

            for ($i = 0; $i < $num_fields; $i++)
            {
                while ($row = mysqli_fetch_row($result))
                {
                    $return .= 'INSERT INTO ' . $table . ' VALUES(';
                    for ($j = 0; $j < $num_fields; $j++)
                    {
                        $row[$j] = addslashes($row[$j]);
                        $row[$j] = preg_replace("/\n/", "\\n", $row[$j]);
                        if (isset($row[$j]))
                        {
                            $return .= '"' . $row[$j] . '"';
                        }
                        else
                        {
                            $return .= '""';
                        }
                        if ($j < ($num_fields - 1))
                        {
                            $return .= ',';
                        }
                    }
                    $return .= ");\n";
                }
            }

            $return .= "\n\n\n";
        }

        $backup_name = date('Y-m-d-His') . '.sql';

        $handle = fopen(storage_path("db-backups") . '/' . $backup_name, 'w+');
        fwrite($handle, $return);
        fclose($handle);

        return $backup_name;
    }

    // public function current_action($route)
    // {
    //     $current = explode('@', $route);
    //     View::share('current_action', $current[1]);
    // }

    // public function currency_rate($from, $to)
    // {
    //     $from_rate = Currency::whereCode($from)->first()->rate;
    //     $to_rate   = Currency::whereCode($to)->first()->rate;
    //     return round($from_rate / $to_rate);
    // }

    // public function convert_currency($from = '', $to = '', $price)
    // {
    //     if ($from == '')
    //     {
    //         if (Session::get('currency'))
    //         {
    //             $from = Session::get('currency');
    //         }
    //         else
    //         {
    //             $from = Currency::where('default', 1)->first()->code;
    //         }

    //     }
    //     if ($to == '')
    //     {
    //         if (Session::get('currency'))
    //         {
    //             $to = Session::get('currency');
    //         }
    //         else
    //         {
    //             $to = Currency::where('default', 1)->first()->code;
    //         }

    //     }
    //     $rate         = Currency::where('code', $from)->first()->rate;
    //     $base_amount  = $price / $rate;
    //     $session_rate = Currency::where('code', $to)->first()->rate;
    //     return round($base_amount * $session_rate);
    // }
}
