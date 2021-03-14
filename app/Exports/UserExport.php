<?php

namespace App\Exports;
use App\User;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class UserExport implements FromView
{

    public $data = null;

    public function __construct($data = null){
           $this->data = $data;         
    }

    public function view(): View
    {
        return view('exports.users', [
            'users' => $this->data
        ]);
    }

}
