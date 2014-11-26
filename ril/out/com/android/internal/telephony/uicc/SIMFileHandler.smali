.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .registers 5
    .parameter "efid"

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_1a

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 72
    const-string v1, "SIMFileHandler"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0           #path:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v0

    .line 45
    :sswitch_11
    const-string v0, "3F007F10"

    goto :goto_10

    .line 58
    :sswitch_14
    const-string v0, "3F007F20"

    goto :goto_10

    .line 68
    :sswitch_17
    const-string v0, "3F007F20"

    goto :goto_10

    .line 43
    :sswitch_data_1a
    .sparse-switch
        0x6f11 -> :sswitch_17
        0x6f13 -> :sswitch_17
        0x6f14 -> :sswitch_17
        0x6f15 -> :sswitch_17
        0x6f16 -> :sswitch_17
        0x6f17 -> :sswitch_17
        0x6f18 -> :sswitch_17
        0x6f38 -> :sswitch_14
        0x6f3c -> :sswitch_11
        0x6f3e -> :sswitch_14
        0x6f46 -> :sswitch_14
        0x6f60 -> :sswitch_17
        0x6fad -> :sswitch_14
        0x6fc5 -> :sswitch_14
        0x6fc7 -> :sswitch_14
        0x6fc8 -> :sswitch_14
        0x6fc9 -> :sswitch_14
        0x6fca -> :sswitch_14
        0x6fcb -> :sswitch_14
        0x6fcd -> :sswitch_14
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 79
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 84
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
