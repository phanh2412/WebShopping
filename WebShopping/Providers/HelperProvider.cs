using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
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
    }
}