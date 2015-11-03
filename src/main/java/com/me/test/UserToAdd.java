package com.me.test;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.sql.Date;

public class UserToAdd {
    private static SecureRandom random = new SecureRandom();
    public static final String SALT = "my-salt-text";

    public static boolean addToDb(String userName, String password, String salt, Date dateJoined,
            String email) {

        return true;
    }

    public static String generateSalt() {
        return new BigInteger(130, random).toString(32);
    }

    public static String generateHash(String input) {
        final StringBuilder hash = new StringBuilder();

        try {
            final MessageDigest sha = MessageDigest.getInstance("SHA-256");
            final byte[] hashedBytes = sha.digest(input.getBytes());
            final char[] digits = {
                    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
            };
            for (int idx = 0; idx < hashedBytes.length; idx++) {
                final byte b = hashedBytes[idx];
                hash.append(digits[(b & 0xf0) >> 4]);
                hash.append(digits[b & 0x0f]);
            }
        } catch (final NoSuchAlgorithmException e) {
            // handle error here.
        }

        return hash.toString();
    }

}
