import React, { useState } from 'react';
import axios from 'axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

const AddBook = ({ onClose }) => {
    const handleCancel = () => {
        onClose();
        window.location.reload();
    };
    const baseurl = process.env.REACT_APP_BASE_API_URL;
    const [name, setName] = useState('');
    const [description, setDescription] = useState('');
    const [image, setImage] = useState(null);

    function handleSubmit(event) {
        event.preventDefault();

        const formData = new FormData();
        formData.append('name', name);
        formData.append('description', description);
        formData.append('image', image);

        const headers = {
            'Authorization': `Bearer ${sessionStorage.getItem('token')}`
        };

        axios.post(`${baseurl}/api/book`, formData, { headers })
            .then(response => {
                console.log(response);
                toast.success('Book created successfully');
            })
            .catch(err => {
                console.log(err);
                toast.error('Failed to create book');
            });

        setName('');
        setDescription('');
        setImage(null);
    }

    return (
        <div className='fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 z-50 inset-0 w-2/5 mx-8 h-fit py-4 bg-white border-2 rounded-md shadow-md shadow-[#002659] borde'>
            <button
                type="button"
                className="text-red-500 float-right border rounded-md px-1 mx-2 my-3 font-bold border-[#002659]"
                onClick={handleCancel}
            >
                X
            </button>
            <ToastContainer />

            <form
                onSubmit={handleSubmit}
                className='my-6'
            >
                <div className='mx-3 my-2'>
                    <input
                        type='text'
                        placeholder='Enter book name'
                        className='w-full border-2 border-b-[#A6A8A9] focus:outline-none focus:border-[#82adb1] rounded-md px-2 py-1'
                        value={name}
                        onChange={(event) => setName(event.target.value)}
                    />
                </div>

                <div className='mx-3 my-2'>
                    <textarea
                        placeholder='Type description'
                        className='w-full border-2 border-b-[#A6A8A9] focus:outline-none focus:border-[#82adb1] rounded-md px-2 py-1'
                        value={description}
                        onChange={(event) => setDescription(event.target.value)}
                    ></textarea>
                </div>

                <div className='mx-3 my-2'>
                    <input
                        type='file'
                        placeholder='Choose image'
                        className='w-full border-2 border-b-[#A6A8A9] focus:outline-none focus:border-[#82adb1] rounded-md px-2 py-1'
                        onChange={(event) => setImage(event.target.files[0])}
                    />
                </div>

                <div className='my-4 mx-3'>
                    <button
                        type='submit'
                        className='bg-[#1D4ED8]  text-white w-full  py-2 rounded-md'>
                        Create Book
                    </button>
                </div>
            </form>
        </div>
    );
};

export default AddBook;
