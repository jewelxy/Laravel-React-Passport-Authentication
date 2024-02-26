<?php

namespace App\Repositories;

interface BookRepositoryInterface
{
    public function all();

    public function create(array $data);

    public function update($id, array $data);

    public function delete($id);

    public function find($id);
}
