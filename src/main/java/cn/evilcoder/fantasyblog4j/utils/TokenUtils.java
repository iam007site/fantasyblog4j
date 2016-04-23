package cn.evilcoder.fantasyblog4j.utils;
import cn.evilcoder.fantasyblog4j.utils.encrypt.Digests;
import cn.evilcoder.fantasyblog4j.utils.encrypt.Encodes;
/**
 * User: Huangshanqi
 * Date: 2016/4/8
 * Time: 10:32
 */
public class TokenUtils {
    public static final String TOKEN_SALT = "test_token";
    public static final long TOKEN_EXPIRED_TIME_MS = 24*60*60*1000;

    public static String genToken(String username,long uid){
        StringBuilder sb = new StringBuilder("");
        sb.append(username).append(uid);
        return Encodes.encodeHex(Digests.sha1(sb.toString().getBytes(),TOKEN_SALT.getBytes()));
    }

    public static boolean validateToken(String username,long uid,String token){
        return token.equals(genToken(username,uid));
    }

}
