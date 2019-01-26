<?php

namespace Tests;

use Illuminate\Foundation\Testing\TestCase as BaseTestCase;

abstract class TestCase extends BaseTestCase
{
    use CreatesApplication;

    protected function signIn($user = [])
    {
        $user = is_array($user) ? factory(User::class)->create($user) : $user;

        $this->user = $user;

        return $this->actingAs($user);
    }
}
