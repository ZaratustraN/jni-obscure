.class public Lcn/zarathustra/obscure/NotObscureJNI;
.super Ljava/lang/Object;
.source "NotObscureJNI.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native hasSensitiveProcess()Z
.end method

.method public static native isHook()Z
.end method

.method public static native isListening()Z
.end method

.method public static native isModifyPkg()Z
.end method
