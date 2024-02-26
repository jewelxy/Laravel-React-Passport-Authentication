<?php

namespace App\Services;

use App\Models\BookModel;
use App\Repositories\BookRepositoryInterface;

class BookService
{
    protected $bookRepository;

    public function __construct(BookRepositoryInterface $bookRepository)
    {
        $this->bookRepository = $bookRepository;
    }

    public function getAllBooks()
    {
        return $this->bookRepository->all();
    }

    public function getBookById($id)
    {
        return $this->bookRepository->find($id);
    }

    public function createBook($data)
    {
        return $this->bookRepository->create($data);
    }

    public function updateBook($id, $data)
    {
        return $this->bookRepository->update($id, $data);
    }

    public function deleteBook($id)
    {
        return $this->bookRepository->delete($id);
    }
}
