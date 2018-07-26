<?php

use Illuminate\Database\Seeder;
use App\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        factory(User::class, 5)->create();
        factory(User::class)->create([
            'name' => 'a',
            'email' => 'a@a.com',
            'type' => 'admin',
            'password' => bcrypt('a')
        ]);
    }
}
