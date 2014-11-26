.class abstract Lcom/android/internal/telephony/sip/SipConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "SipConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipConnectionBase$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipConnBase"

.field private static final VDBG:Z


# instance fields
.field private mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mConnectTime:J

.field private mConnectTimeReal:J

.field private mCreateTime:J

.field private mDisconnectTime:J

.field private mDuration:J

.field private mHoldingStartTime:J

.field private mNextPostDialChar:I

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "dialString"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .line 54
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 55
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipConnectionBase: ctor dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    .line 62
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 179
    const-string v0, "SipConnBase"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .registers 2

    .prologue
    .line 160
    const-string v0, "cancelPostDial: ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public getConnectTime()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 107
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 108
    const-wide/16 v0, 0x0

    .line 115
    .local v0, dur:J
    :goto_a
    return-wide v0

    .line 109
    .end local v0           #dur:J
    :cond_b
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1a

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    sub-long v0, v2, v4

    .restart local v0       #dur:J
    goto :goto_a

    .line 112
    .end local v0           #dur:J
    :cond_1a
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .restart local v0       #dur:J
    goto :goto_a
.end method

.method public getHoldDurationMillis()J
    .registers 7

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_b

    .line 123
    const-wide/16 v0, 0x0

    .line 128
    .local v0, dur:J
    :goto_a
    return-wide v0

    .line 125
    .end local v0           #dur:J
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    sub-long v0, v2, v4

    .restart local v0       #dur:J
    goto :goto_a
.end method

.method public getNumberPresentation()I
    .registers 2

    .prologue
    .line 186
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    return v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mNextPostDialChar:I

    if-gt v0, v1, :cond_22

    .line 171
    :cond_1a
    const-string v0, "getRemaingPostDialString: ret empty string"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 172
    const-string v0, ""

    .line 175
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceedAfterWaitChar()V
    .registers 2

    .prologue
    .line 150
    const-string v0, "proceedAfterWaitChar: ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 155
    const-string v0, "proceedAfterWildChar: ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method setDisconnectCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .registers 4
    .parameter "cause"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisconnectCause: prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 140
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 84
    :cond_21
    :goto_21
    return-void

    .line 68
    :pswitch_22
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    goto :goto_21

    .line 74
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    goto :goto_21

    .line 78
    :pswitch_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    goto :goto_21

    .line 66
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_37
        :pswitch_44
    .end packed-switch
.end method
