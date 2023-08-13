<?php

namespace App\Http\Controllers;

use App\Models\ActivityLog;
use Spatie\Activitylog\Traits\LogsActivity;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ActivityLogController extends Controller
{
    public function index()
    {
        $activity_log = ActivityLog::with('user')->limit(10)->orderBy('id', 'DESC')->get();
        return view('news.log', ['log' => $activity_log]);
    }
}
