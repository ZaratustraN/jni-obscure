.class public Lcn/zarathustra/obscure/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcn/zarathustra/obscure/MainActivity;->setContentView(I)V

    .line 19
    invoke-static {}, Lcn/zarathustra/obscure/NotObscureJNI;->isHook()Z

    .line 20
    invoke-static {}, Lcn/zarathustra/obscure/NotObscureJNI;->hasSensitiveProcess()Z

    .line 21
    invoke-static {}, Lcn/zarathustra/obscure/NotObscureJNI;->isListening()Z

    .line 22
    invoke-static {}, Lcn/zarathustra/obscure/NotObscureJNI;->isModifyPkg()Z

.line 25
sget-object v0, Lcn/zarathustra/obscure/ObscureJNI;->OPCODE1:Ljava/lang/String;

invoke-static {v0}, Lcn/zarathustra/obscure/ObscureJNI;->a(Ljava/lang/String;)Z

.line 26
sget-object v0, Lcn/zarathustra/obscure/ObscureJNI;->OPCODE2:Ljava/lang/String;

invoke-static {v0}, Lcn/zarathustra/obscure/ObscureJNI;->a(Ljava/lang/String;)Z

.line 27
sget-object v0, Lcn/zarathustra/obscure/ObscureJNI;->OPCODE3:Ljava/lang/String;

invoke-static {v0}, Lcn/zarathustra/obscure/ObscureJNI;->a(Ljava/lang/String;)Z

.line 28
sget-object v0, Lcn/zarathustra/obscure/ObscureJNI;->OPCODE4:Ljava/lang/String;

invoke-static {v0}, Lcn/zarathustra/obscure/ObscureJNI;->a(Ljava/lang/String;)Z

    .line 29
    return-void
.end method
