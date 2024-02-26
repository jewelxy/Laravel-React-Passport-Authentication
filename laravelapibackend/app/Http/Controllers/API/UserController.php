<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Auth;
class UserController extends Controller
{

    /**
     * Login User
     */
    public function loginuser(Request $request)
    {
        $input = $request->all();
        Auth::attempt($input);
        $user = Auth::User();
        $token = $user->createToken('example')->accessToken;
        return Response(
            [
                    'status'=>200,
                    'token'=>$token,
                    'usertype' => $user->usertype
            ],200);
    }

    /*
    * Show all admin including user
    */
    public function getUserDetails(User $user)
        { 
            if(Auth::guard('api')->check()){
                $currentUser = Auth::guard('api')->user();
                if ($currentUser->usertype === 'admin') {
                    $users = User::all();
                    return Response($users, 200);
                } else {
                    return Response([$currentUser], 200);
                }
            } else {
                return Response(['data' => 'Unauthorized'], 401);
            }
    }

    /**
     * Logout
     */
    public function getLogout(User $user)
    {
        if(Auth::guard('api')->check()){
            $accessToken = Auth::guard('api')->user()->token();
            \DB::table('oauth_refresh_tokens')
            ->where('access_token_id', $accessToken->id)
            ->update(['revoked' => true]);
            $accessToken->revoke();

            return Response(['data' => 'Unauthorized', 'message' => 'User Logout successfully'],200);
       }else{
            return Response(['data' => 'Unauthorized'],401);
       }
    }
    /*
    *specified user from storage.
    */

    public function showUser($id)
    {
        if (Auth::guard('api')->check()) {
            $user = Auth::guard('api')->user();
            
            if ($user->usertype === 'admin') {
                $result = User::find($id);
                
                if (!$result) {
                    return response()->json(['Status' => 'Failed', 'message' => 'User not found'], 404);
                }
                
                $data = [
                    'id' => $result->id,
                    'name' => $result->name,
                    'email' => $result->email
                ];
    
                return response()->json($data);
            } else {
                return response()->json(['data' => 'Unauthorized user submission'], 401);
            }
        } else {
            return response()->json(['data' => 'Unauthenticated user'], 401);
        }
    }
/*
*Store user
*/

public function storeUser(Request $request)
{
    if (Auth::guard('api')->check()) {
        if (Auth::guard('api')->user()->usertype === 'admin') {
            $result = User::create([
                "name" => $request->input('name'),
                "email" => $request->input('email'),
                "password" => bcrypt($request->input('password')),
            ]);
            return response()->json($result, 201);
        } else {
            return response()->json(['data' => 'Unauthorized user submission'], 401);
        }
    } else {
        return response()->json(['data' => 'Unauthenticated user'], 401);
    }
}



     /*
    *update specified user from storage.
    */
public function updateUser(Request $request, $id)
{
    if (Auth::guard('api')->check()) {
        $user = Auth::guard('api')->user();
        
        if ($user->usertype === 'admin') {
            $bookdetails = User::find($id);
    
            if (!$bookdetails) {
                return response()->json(['Status' => 'Failed', 'message' => 'User details not found'], 404);
            }
            
            $bookdetails->update([
                "name" => $request->input('name'),
                "email" => $request->input('email'),
                "password" => $request->input('password'),
            ]);
    
            return response()->json(['Status' => 'Success', 'message' => 'User details updated successfully'], 200);
        } else {
            return response()->json(['Status' => 'Failed', 'message' => 'Unauthorized'], 401);
        }
    } else {
        return response()->json(['Status' => 'Failed', 'message' => 'Unauthorized'], 401);
    }
}

 /*
    * remove specified user from storage.
    */
public function destroyUser($id)
{
    if (Auth::guard('api')->check()) {
        $user = Auth::guard('api')->user();
        
        if ($user->usertype === 'admin') {
            $book = User::find($id);
    
            if (!$book) {
                return response()->json(['Status' => 'Failed', 'message' => 'User not found'], 404);
            }
            
            $book->delete();
    
            return response()->json(['Status' => 'Success', 'message' => 'User deleted successfully'], 200);
        } else {
            return response()->json(['Status' => 'Failed', 'message' => 'Unauthorized'], 401);
        }
    } else {
        return response()->json(['Status' => 'Failed', 'message' => 'Unauthorized'], 401);
    }
}
    
}
