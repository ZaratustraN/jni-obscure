package cn.zarathustra.obscure;


public class ObscureJNI {

    //isModifyPkg
    public static String OPCODE1 = "805af30bbb66cb65accdea8b37890ec3";

    //isHook
    public static String OPCODE2 = "8727fd99374b1989fe854785b48f8dc6";

    //isListening
    public static String OPCODE3 = "a2a5ef0cc5017e0c4da97a8e61705196";

    //hasSensitiveProcess
    public static String OPCODE4 = "dc2ad8b00cac1e98f15e67fd7f9248ab";

    public static native boolean a(String opcode);
}
