package com.danielsogl.isdebug;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@NativePlugin()
public class IsDebug extends Plugin {

    private static Context ctx;

    @PluginMethod()
    public void check(PluginCall call) {
        ctx = bridge.getContext();
        Boolean value = this.isDebug();

        JSObject ret = new JSObject();
        ret.put("value", value);
        call.success(ret);
    }

    private boolean isDebug() {
        try {
            if ((ctx.getPackageManager().getPackageInfo(
                    ctx.getPackageName(), 0).applicationInfo.flags &
                    ApplicationInfo.FLAG_DEBUGGABLE) != 0) {
                //Debug and development mode
                return true;
            }
        } catch (PackageManager.NameNotFoundException e) {
            // do nothing
        }
        return false;
    }
}
