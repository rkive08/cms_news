<?php

namespace Database\Seeders;

use App\Models\User;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $admin = User::create([
            'name' => 'Ayu Inten Nurillah',
            'email' => 'user1@gmail.com',
            'password' => bcrypt('user123'),
        ]);

        $admin->assignRole('admin');
    }
}
