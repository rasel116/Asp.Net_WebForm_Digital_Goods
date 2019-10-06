using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(pro_support.Startup))]
namespace pro_support
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
