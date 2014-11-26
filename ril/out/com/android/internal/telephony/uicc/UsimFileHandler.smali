.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .registers 3
    .parameter "efid"

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_12

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 74
    const-string v0, "3F007F105F3A"

    .line 76
    .end local v0           #path:Ljava/lang/String;
    :cond_b
    :goto_b
    return-object v0

    .line 63
    :sswitch_c
    const-string v0, "3F007FFF"

    goto :goto_b

    .line 67
    :sswitch_f
    const-string v0, "3F007F105F3A"

    goto :goto_b

    .line 37
    :sswitch_data_12
    .sparse-switch
        0x4f30 -> :sswitch_f
        0x6f11 -> :sswitch_c
        0x6f13 -> :sswitch_c
        0x6f14 -> :sswitch_c
        0x6f15 -> :sswitch_c
        0x6f16 -> :sswitch_c
        0x6f17 -> :sswitch_c
        0x6f18 -> :sswitch_c
        0x6f38 -> :sswitch_c
        0x6f3b -> :sswitch_c
        0x6f3c -> :sswitch_c
        0x6f3e -> :sswitch_c
        0x6f40 -> :sswitch_c
        0x6f46 -> :sswitch_c
        0x6f4b -> :sswitch_c
        0x6f4e -> :sswitch_c
        0x6f60 -> :sswitch_c
        0x6fad -> :sswitch_c
        0x6fc5 -> :sswitch_c
        0x6fc6 -> :sswitch_c
        0x6fc7 -> :sswitch_c
        0x6fc8 -> :sswitch_c
        0x6fc9 -> :sswitch_c
        0x6fca -> :sswitch_c
        0x6fcb -> :sswitch_c
        0x6fcd -> :sswitch_c
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 81
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 86
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
