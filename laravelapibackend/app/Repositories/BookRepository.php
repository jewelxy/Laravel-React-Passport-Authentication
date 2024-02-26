<?php

namespace App\Repositories;

use App\Models\Book\BookModel;
use App\Repositories\BookRepositoryInterface;

class BookRepository implements BookRepositoryInterface
{
    public function all()
    {
        return BookModel::all();
    }

    public function create(array $data)
    {
        return BookModel::create($data);
    }

    public function update($id, array $data)
    {
        $book = BookModel::find($id);
        $book->update($data);
        return $book;
    }

    public function delete($id)
    {
        return BookModel::destroy($id);
    }

    public function find($id)
    {
        return BookModel::find($id);
    }
}
