<!-- 
namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VerificationController extends Controller
{
    public function verify($user_id, Request $req)
    {
        if (!$req->hasValidSignature())
        {
            return response()->json (["msg" => "Invalid/Expire url provider."], status:401);
        }

        $user = User:: findOrFail($user_id);

        if(!$user -> hasVerifiedEmail())
        {
            $user -> markEmailAsVerified();
        }
        else{
            return response()->json([
                "status" => 400,
                "message"=> "Email already verified"
            ], status: 400);
        }

        return response()->json([
            "status" =>200,
            "message" => "Your email $user->email successfully verified"

        ], status: 200);
    }
}
 -->
