.class public Lcom/android/internal/telephony/QualcommSharedRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QualcommSharedRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QualcommSharedRIL$1;,
        Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;
    }
.end annotation


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;

.field protected mLastDataIface:[Ljava/lang/String;

.field protected mUSIM:Z

.field skipCdmaSubcription:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGV:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    .line 58
    const-string v0, "skipCdmaSubcription"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->skipCdmaSubcription:Z

    .line 60
    iput v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_OFF:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_ON:I

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_ON_NG:I

    .line 64
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mQANElements:I

    .line 71
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .registers 8
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 628
    sparse-switch p1, :sswitch_data_56

    .line 655
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 630
    :sswitch_1d
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 631
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-eqz v3, :cond_27

    .line 632
    iput-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 633
    iput-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 658
    :cond_27
    :goto_27
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 659
    return-void

    .line 637
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2b
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 638
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_27

    .line 642
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2e
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-nez v3, :cond_52

    .line 643
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 648
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 649
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;-><init>(Lcom/android/internal/telephony/QualcommSharedRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 650
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->run()V

    .line 652
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_52
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 653
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_27

    .line 628
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2e
        0xa -> :sswitch_2e
        0xd -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 81
    return-void
.end method

.method protected getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .registers 12
    .parameter "p"
    .parameter "version"

    .prologue
    const/4 v8, 0x0

    .line 221
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 223
    .local v1, dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    const-string v5, "datacall"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    .line 225
    .local v4, oldRil:Z
    if-nez v4, :cond_16

    const/4 v5, 0x5

    if-ge p2, v5, :cond_16

    .line 226
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v1

    .line 275
    .end local v1           #dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_15
    :goto_15
    return-object v1

    .line 227
    .restart local v1       #dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_16
    if-nez v4, :cond_93

    .line 228
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 235
    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    if-ne v5, v6, :cond_5c

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5c

    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    if-eqz v5, :cond_5c

    .line 237
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "getDataCallResponse, no ifname"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 241
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 243
    :cond_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 245
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 247
    :cond_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 249
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    goto :goto_15

    .line 252
    .end local v0           #addresses:Ljava/lang/String;
    .end local v2           #dnses:Ljava/lang/String;
    .end local v3           #gateways:Ljava/lang/String;
    :cond_93
    const/4 v5, 0x4

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 256
    iget-object v5, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    aget-object v5, v5, v6

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 259
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 260
    iget-object v5, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    aget-object v5, v5, v8

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 263
    :cond_c1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 265
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 267
    :cond_d3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 270
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 271
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 272
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto/16 :goto_15
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    const/16 v3, 0xb

    .line 110
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 112
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 121
    :cond_51
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 122
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/QualcommSharedRIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_b

    .line 333
    :goto_a
    return-void

    .line 327
    :cond_b
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 330
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 332
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_a
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 130
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 133
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    if-eqz v1, :cond_12

    .line 134
    const-string v1, "7F20$"

    const-string v2, "7FFF"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 136
    :cond_12
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_c5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 154
    :cond_c5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 155
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .registers 12
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 387
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 391
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/QualcommSharedRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 393
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_34

    .line 394
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 556
    .end local v3           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_33
    :goto_33
    return-object v3

    .line 399
    .restart local v3       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_34
    const/4 v2, 0x0

    .line 401
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_b5

    .line 404
    :cond_3d
    const-string v7, "ro.cm.device"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "e73"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_55

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v8, 0xdc

    if-ne v7, v8, :cond_55

    .line 406
    const/16 v7, 0x33

    iput v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 410
    :cond_55
    :try_start_55
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_36e

    .line 526
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_75} :catch_75

    .line 528
    :catch_75
    move-exception v5

    .line 531
    .local v5, tr:Ljava/lang/Throwable;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_33

    .line 536
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 537
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 416
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_b1
    :try_start_b1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_75

    move-result-object v2

    .line 543
    .end local v2           #ret:Ljava/lang/Object;
    :cond_b5
    :goto_b5
    if-eqz v0, :cond_326

    .line 544
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto/16 :goto_33

    .line 417
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_bc
    :try_start_bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 418
    :pswitch_c1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 419
    :pswitch_c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 420
    :pswitch_cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 421
    :pswitch_d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 422
    :pswitch_d5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 423
    :pswitch_da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 424
    :pswitch_df
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 425
    :pswitch_e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 426
    :pswitch_e9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 427
    :pswitch_ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 428
    :pswitch_f3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 429
    :pswitch_f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 430
    :pswitch_fd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 431
    :pswitch_102
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 432
    :pswitch_107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 433
    :pswitch_10c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 434
    :pswitch_111
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 435
    :pswitch_116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 436
    :pswitch_11b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 437
    :pswitch_120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 438
    :pswitch_125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 439
    :pswitch_12a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 440
    :pswitch_12f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b5

    .line 441
    :pswitch_134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 442
    :pswitch_13a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 443
    :pswitch_140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 444
    :pswitch_146
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 445
    :pswitch_14c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 446
    :pswitch_152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 447
    :pswitch_158
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 448
    :pswitch_15e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 449
    :pswitch_164
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 450
    :pswitch_16a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 451
    :pswitch_170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 452
    :pswitch_176
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 453
    :pswitch_17c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 454
    :pswitch_182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 455
    :pswitch_188
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 456
    :pswitch_18e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 457
    :pswitch_194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 458
    :pswitch_19a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 459
    :pswitch_1a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 460
    :pswitch_1a6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 461
    :pswitch_1ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 462
    :pswitch_1b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 463
    :pswitch_1b8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 464
    :pswitch_1be
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 465
    :pswitch_1c4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 466
    :pswitch_1ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 467
    :pswitch_1d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 468
    :pswitch_1d6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 469
    :pswitch_1dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 470
    :pswitch_1e2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 471
    :pswitch_1e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 472
    :pswitch_1ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 473
    :pswitch_1f4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 474
    :pswitch_1fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 475
    :pswitch_200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 476
    :pswitch_206
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 477
    :pswitch_20c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 478
    :pswitch_212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 479
    :pswitch_218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 480
    :pswitch_21e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 481
    :pswitch_224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 482
    :pswitch_22a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 483
    :pswitch_230
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 484
    :pswitch_236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 485
    :pswitch_23c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 486
    :pswitch_242
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 487
    :pswitch_248
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 488
    :pswitch_24e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 489
    :pswitch_254
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 490
    :pswitch_25a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 491
    :pswitch_260
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 492
    :pswitch_266
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 493
    :pswitch_26c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 494
    :pswitch_272
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 495
    :pswitch_278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 496
    :pswitch_27e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 497
    :pswitch_284
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 498
    :pswitch_28a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 499
    :pswitch_290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 500
    :pswitch_296
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 501
    :pswitch_29c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 502
    :pswitch_2a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 503
    :pswitch_2a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 504
    :pswitch_2ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 505
    :pswitch_2b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 506
    :pswitch_2ba
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 507
    :pswitch_2c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 508
    :pswitch_2c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 509
    :pswitch_2cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 510
    :pswitch_2d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 511
    :pswitch_2d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 512
    :pswitch_2de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 513
    :pswitch_2e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 514
    :pswitch_2ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 515
    :pswitch_2f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 516
    :pswitch_2f6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 517
    :pswitch_2fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 518
    :pswitch_302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 519
    :pswitch_308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 520
    :pswitch_30e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 521
    :pswitch_314
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 522
    :pswitch_31a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b5

    .line 523
    :pswitch_320
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_323
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_323} :catch_75

    move-result-object v2

    goto/16 :goto_b5

    .line 548
    .end local v2           #ret:Ljava/lang/Object;
    :cond_326
    iget-boolean v7, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v7, :cond_35e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 551
    :cond_35e
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_33

    .line 552
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 553
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_33

    .line 410
    :pswitch_data_36e
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_bc
        :pswitch_c1
        :pswitch_c6
        :pswitch_cb
        :pswitch_d0
        :pswitch_d5
        :pswitch_da
        :pswitch_df
        :pswitch_e4
        :pswitch_e9
        :pswitch_ee
        :pswitch_f3
        :pswitch_f8
        :pswitch_fd
        :pswitch_102
        :pswitch_107
        :pswitch_10c
        :pswitch_111
        :pswitch_116
        :pswitch_11b
        :pswitch_120
        :pswitch_125
        :pswitch_12a
        :pswitch_12f
        :pswitch_134
        :pswitch_13a
        :pswitch_140
        :pswitch_146
        :pswitch_14c
        :pswitch_152
        :pswitch_158
        :pswitch_15e
        :pswitch_164
        :pswitch_16a
        :pswitch_170
        :pswitch_176
        :pswitch_17c
        :pswitch_182
        :pswitch_188
        :pswitch_18e
        :pswitch_194
        :pswitch_19a
        :pswitch_1a0
        :pswitch_1a6
        :pswitch_1ac
        :pswitch_1b2
        :pswitch_1b8
        :pswitch_1be
        :pswitch_1c4
        :pswitch_1ca
        :pswitch_1d0
        :pswitch_1d6
        :pswitch_1dc
        :pswitch_1e2
        :pswitch_1e8
        :pswitch_1ee
        :pswitch_1f4
        :pswitch_1fa
        :pswitch_200
        :pswitch_206
        :pswitch_20c
        :pswitch_212
        :pswitch_218
        :pswitch_21e
        :pswitch_224
        :pswitch_22a
        :pswitch_230
        :pswitch_236
        :pswitch_23c
        :pswitch_242
        :pswitch_248
        :pswitch_24e
        :pswitch_254
        :pswitch_25a
        :pswitch_260
        :pswitch_266
        :pswitch_26c
        :pswitch_272
        :pswitch_278
        :pswitch_27e
        :pswitch_284
        :pswitch_28a
        :pswitch_290
        :pswitch_296
        :pswitch_2cc
        :pswitch_29c
        :pswitch_2a2
        :pswitch_2a8
        :pswitch_2ae
        :pswitch_2b4
        :pswitch_2ba
        :pswitch_2c0
        :pswitch_2c6
        :pswitch_2d2
        :pswitch_2d8
        :pswitch_2de
        :pswitch_2e4
        :pswitch_2f6
        :pswitch_2ea
        :pswitch_2f0
        :pswitch_2fc
        :pswitch_302
        :pswitch_308
        :pswitch_30e
        :pswitch_314
        :pswitch_31a
        :pswitch_320
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 9
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 564
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 568
    .local v1, response:I
    const-string v4, "datacall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 569
    packed-switch v1, :pswitch_data_70

    .line 579
    :cond_14
    packed-switch v1, :pswitch_data_7c

    .line 589
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 592
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 620
    :cond_1d
    :goto_1d
    :sswitch_1d
    return-void

    .line 574
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 575
    .local v2, ret:Ljava/lang/Object;
    goto :goto_1d

    .line 581
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 596
    .restart local v2       #ret:Ljava/lang/Object;
    :goto_27
    sparse-switch v1, :sswitch_data_8a

    goto :goto_1d

    .line 598
    :sswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 599
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/QualcommSharedRIL;->setRadioStateFromRILInt(I)V

    goto :goto_1d

    .line 582
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 583
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 584
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 585
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 602
    :sswitch_47
    iget-boolean v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_4e

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 604
    :cond_4e
    check-cast v2, [I

    .end local v2           #ret:Ljava/lang/Object;
    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/QualcommSharedRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_1d

    .line 610
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_59
    iget-boolean v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_60

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 612
    :cond_60
    iget-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1d

    .line 613
    iget-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1d

    .line 569
    nop

    :pswitch_data_70
    .packed-switch 0x407
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 579
    :pswitch_data_7c
    .packed-switch 0x40a
        :pswitch_23
        :pswitch_33
        :pswitch_38
        :pswitch_3d
        :pswitch_42
    .end packed-switch

    .line 596
    :sswitch_data_8a
    .sparse-switch
        0x3e8 -> :sswitch_2b
        0x40a -> :sswitch_47
        0x40b -> :sswitch_1d
        0x40c -> :sswitch_1d
        0x40d -> :sswitch_59
    .end sparse-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/QualcommSharedRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 98
    return-void
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 11
    .parameter "p"

    .prologue
    .line 162
    new-instance v5, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 163
    .local v5, status:Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_2f

    .line 173
    const/16 v4, 0x8

    .line 175
    :cond_2f
    new-array v6, v4, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 177
    const/4 v3, 0x0

    .local v3, i:I
    :goto_34
    if-ge v3, v4, :cond_9a

    .line 178
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 179
    .local v2, ca:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 187
    const-string v6, "skippinpukcount"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_93

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 193
    :cond_93
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v2, v6, v3

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 195
    .end local v2           #ca:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_9a
    const/4 v0, -0x1

    .line 196
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_fc

    iget-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->skipCdmaSubcription:Z

    if-nez v6, :cond_fc

    .line 197
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 198
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_be
    if-lez v4, :cond_fb

    .line 205
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v1, v6, v0

    .line 206
    .local v1, application:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    .line 207
    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v6, v7, :cond_117

    const/4 v6, 0x1

    :goto_cf
    iput-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    .line 209
    iget v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    .line 211
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 212
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    .line 213
    :cond_e1
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1           #application:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_fb
    return-object v5

    .line 200
    :cond_fc
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 201
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 207
    .restart local v1       #application:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_117
    const/4 v6, 0x0

    goto :goto_cf
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 283
    const-string v3, "datacall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v2

    .line 285
    .local v2, oldRil:Z
    if-nez v2, :cond_f

    .line 286
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 319
    :goto_e
    return-object v1

    .line 288
    :cond_f
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 289
    .local v1, dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 291
    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 294
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v4

    if-ne v3, v4, :cond_40

    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    if-eqz v3, :cond_40

    .line 296
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    :cond_40
    const-string v3, "singlepdp"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 301
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 305
    :cond_5c
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 310
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 313
    :cond_76
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 314
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 315
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 316
    iput v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 317
    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    goto/16 :goto_e
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 22
    .parameter "p"

    .prologue
    .line 358
    const/16 v17, 0xc

    .line 361
    .local v17, numInts:I
    const-string v1, "signalstrength"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v18

    .line 362
    .local v18, oldRil:Z
    const/16 v16, 0x0

    .line 365
    .local v16, noLte:Z
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 366
    .local v19, response:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_13
    move/from16 v0, v17

    if-ge v15, v0, :cond_3d

    .line 367
    if-nez v18, :cond_1b

    if-eqz v16, :cond_36

    :cond_1b
    const/4 v1, 0x6

    if-le v15, v1, :cond_36

    const/16 v1, 0xc

    if-ge v15, v1, :cond_36

    .line 368
    const/4 v1, -0x1

    aput v1, v19, v15

    .line 372
    :goto_25
    const/4 v1, 0x7

    if-ne v15, v1, :cond_33

    aget v1, v19, v15

    const/16 v2, 0x63

    if-ne v1, v2, :cond_33

    .line 373
    const/4 v1, -0x1

    aput v1, v19, v15

    .line 374
    const/16 v16, 0x1

    .line 366
    :cond_33
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 370
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v19, v15

    goto :goto_25

    .line 377
    :cond_3d
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    aget v2, v19, v2

    const/4 v3, 0x1

    aget v3, v19, v3

    const/4 v4, 0x2

    aget v4, v19, v4

    const/4 v5, 0x3

    aget v5, v19, v5

    const/4 v6, 0x4

    aget v6, v19, v6

    const/4 v7, 0x5

    aget v7, v19, v7

    const/4 v8, 0x6

    aget v8, v19, v8

    const/4 v9, 0x7

    aget v9, v19, v9

    const/16 v10, 0x8

    aget v10, v19, v10

    const/16 v11, 0x9

    aget v11, v19, v11

    const/16 v12, 0xa

    aget v12, v19, v12

    const/16 v13, 0xb

    aget v13, v19, v13

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    return-object v1
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 3

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPreferredNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 338
    :cond_1c
    iget v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 339
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 104
    iget-object v5, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/QualcommSharedRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 767
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 771
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 774
    :cond_38
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, "NOCHANGE"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 779
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 4
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    if-nez v0, :cond_d

    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    if-ltz v0, :cond_d

    .line 348
    const/4 p1, 0x0

    .line 350
    :cond_d
    iput p1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    .line 352
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 353
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/QualcommSharedRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 76
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 86
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 91
    return-void
.end method
