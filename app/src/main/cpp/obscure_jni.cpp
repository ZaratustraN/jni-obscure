#include <jni.h>
#include <string>
#include "md5.h"

#ifdef __cplusplus
extern "C" {
#endif

using namespace std;

//isModifyPkg
#define OPCODE1 "OPCODE1"

//isHook
#define OPCODE2 "OPCODE2"

//isListening
#define OPCODE3 "OPCODE3"

//hasSensitiveProcess
#define OPCODE4 "OPCODE4"


string ToHexString(const string &input) {
    char *buf = new char[input.length() * 2 + 1];
    memset(buf, 0, input.length() * 2 + 1);

    for (int i = 0; i < input.size(); i++) {
        sprintf(buf + i * 2, "%02x", (uint8_t) input.at(i));
    }

    string res(buf, input.size() * 2);
    delete[] buf;
    return res;
}

string MD5(const string &src) {
    uint8_t signature[16];
    md5((const unsigned char *) src.data(), src.size(), signature);
    string result((char *) signature, 16);
    return ToHexString(result);
}

JNIEXPORT jboolean JNICALL
Java_cn_zarathustra_obscure_ObscureJNI_a(JNIEnv *env, jclass type, jstring opcode_) {
    jboolean iscopy = JNI_FALSE;
    const char *opcode = opcode_ != NULL ? env->GetStringUTFChars(opcode_, &iscopy) : NULL;

    string opcodeStr = "";
    if (opcode != NULL) {
        opcodeStr = string(opcode, strlen(opcode));
    }

bool result = false;

if (opcodeStr == MD5(OPCODE1)) {
    result = true;
} else if (opcodeStr == MD5(OPCODE2)) {
    result = true;
} else if (opcodeStr == MD5(OPCODE3)) {
    result = true;
} else if (opcodeStr == MD5(OPCODE4)) {
    result = true;
}
    env->ReleaseStringUTFChars(opcode_, opcode);
    return result;
}

#ifdef __cplusplus
}
#endif

