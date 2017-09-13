package cn.zarathustra.obscure;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    static {
        System.loadLibrary("native-lib");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        NotObscureJNI.isHook();
        NotObscureJNI.hasSensitiveProcess();
        NotObscureJNI.isListening();
        NotObscureJNI.isModifyPkg();


        ObscureJNI.a(ObscureJNI.OPCODE1);
        ObscureJNI.a(ObscureJNI.OPCODE2);
        ObscureJNI.a(ObscureJNI.OPCODE3);
        ObscureJNI.a(ObscureJNI.OPCODE4);
    }

}
