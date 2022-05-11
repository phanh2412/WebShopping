using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace WebShopping.Providers
{
    public class HelperProvider
    {
        public static bool Base64ToImage(string base64String, string pathToSave)
        {
            try
            {
                // Convert base 64 string to byte[]
                byte[] imageBytes = Convert.FromBase64String(base64String);
                // Convert byte[] to Image
                using (var ms = new MemoryStream(imageBytes, 0, imageBytes.Length))
                {
                    Image image = Image.FromStream(ms, true);
                    Bitmap bmp = new Bitmap(image);
                    bmp.Save(pathToSave);
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static string MakeCode()
        {
            try
            {
                DateTime epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
                ulong time = (ulong)(DateTime.UtcNow - epoch).TotalMilliseconds;

                char[] _base = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V' };
                char[] Code = new char[10];

                Code[0] = _base[(time >> 45) & 31];
                Code[1] = _base[(time >> 40) & 31];
                Code[2] = _base[(time >> 35) & 31];
                Code[3] = _base[(time >> 30) & 31];
                Code[4] = _base[(time >> 25) & 31];
                Code[5] = _base[(time >> 20) & 31];
                Code[6] = _base[(time >> 15) & 31];
                Code[7] = _base[(time >> 10) & 31];
                Code[8] = _base[(time >> 5) & 31];
                Code[9] = _base[time & 31];

                string ShareCode = new string(Code);

                return ShareCode;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public static string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString().ToLower();
            }
        }
        public static string EncodePassword(string userId, string password)
        {
            try
            {
                userId = CreateMD5(userId);
                password = CreateMD5(userId[userId.Length - 1] + password + userId[0]);
                password = CreateMD5(userId[userId.Length - 2] + password + userId[1]);
                return password;
            }
            catch (Exception ex) { return null; }
        }
    }
}