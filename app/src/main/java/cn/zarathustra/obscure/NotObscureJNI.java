package cn.zarathustra.obscure;


public class NotObscureJNI {

    public static native boolean isModifyPkg();

    public static native boolean isHook();

    public static native boolean isListening();

    public static native boolean hasSensitiveProcess();
}
