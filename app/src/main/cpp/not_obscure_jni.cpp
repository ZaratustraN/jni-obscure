#include <jni.h>
#include <string>

#ifdef __cplusplus
extern "C" {
#endif

JNIEXPORT jboolean JNICALL
Java_cn_zarathustra_obscure_NotObscureJNI_isModifyPkg(JNIEnv *env, jclass type) {

    return true;
}


JNIEXPORT jboolean JNICALL
Java_cn_zarathustra_obscure_NotObscureJNI_isHook(JNIEnv *env, jclass type) {

    return true;
}


JNIEXPORT jboolean JNICALL
Java_cn_zarathustra_obscure_NotObscureJNI_isListening(JNIEnv *env, jclass type) {

    return true;
}

JNIEXPORT jboolean JNICALL
Java_cn_zarathustra_obscure_NotObscureJNI_hasSensitiveProcess(JNIEnv *env, jclass type) {

    return true;
}

#ifdef __cplusplus
}
#endif