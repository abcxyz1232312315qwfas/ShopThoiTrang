package com.buiminhduc;

import com.buiminhduc.converter.UserConverter;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.request.UserRequest;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import java.lang.reflect.Field;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.*;

public class test {
        public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
//            String SECRET_KEY = "12345678";
//            SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY.getBytes(), "DES");
//            Scanner scanner = new Scanner(System.in);
//            String original = scanner.nextLine();
//
//            Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5PADDING");
//            cipher.init(Cipher.ENCRYPT_MODE, skeySpec);
//            byte[] byteEncrypted = cipher.doFinal(original.getBytes());
//            String encrypted = Base64.getEncoder().encodeToString(byteEncrypted);
//
//
//            cipher.init(Cipher.DECRYPT_MODE, skeySpec);
//            byte[] byteDecrypted = cipher.doFinal(byteEncrypted);
//            String decrypted = new String(byteDecrypted);
//
//            System.out.println("original  text: " + original);
//            System.out.println("encrypted text: " + encrypted);
//            System.out.println("decrypted text: " + decrypted);
            UserRequest userRequest= new UserRequest("123","456","789","785",1);
            UserEntity entity = UserConverter.converToEntity(userRequest);
            System.out.println(entity);
        }
}
