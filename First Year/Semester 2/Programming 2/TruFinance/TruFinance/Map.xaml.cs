using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Devices.Geolocation;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Maps;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace TruFinance
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Map : Page
    {
        public Map()
        {
            this.InitializeComponent();
            txtLocation.Text = "67 Pickering Street \n" +
                "Newton Park \n" +
                "Port Elizabeth \n" +
                "Eastern Cape \n" +
                "Phone Number: 041 111 1111 or 082 222 2222";//hardcoded details on location to show to user
            SetMap();
        }

        async void SetMap()
        {
            BasicGeoposition geoposition = new BasicGeoposition();
            geoposition.Longitude = 25.570099;
            geoposition.Latitude = -33.94507;

            Geopoint myPoint = new Geopoint(geoposition);
            MainMap.Center = myPoint;

            MapScene mapScene = MapScene.CreateFromLocationAndRadius(new Geopoint(geoposition), 500, 170, 50);
            await MainMap.TrySetSceneAsync(mapScene);
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(MainPage));//more navigations
        }

        private void btnGallery_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(Gallery));//more navigations
        }

        private void btnCalc_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(Calculator));//more navigations
        }
    }
}
