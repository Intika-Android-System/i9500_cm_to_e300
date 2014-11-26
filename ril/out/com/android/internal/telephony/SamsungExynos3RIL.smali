.class public Lcom/android/internal/telephony/SamsungExynos3RIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungExynos3RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungExynos3RIL$1;,
        Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;,
        Lcom/android/internal/telephony/SamsungExynos3RIL$SamsungDriverCall;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_UNSOL_AM:I = 0x2b02

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST:I = 0x2b04

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_2:I = 0x2b03


# instance fields
.field private mCatProCmdBuffer:Ljava/lang/Object;

.field private mIsSamsungCdma:Z

.field private mSignalbarCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 63
    const-string v2, "ro.telephony.sends_barcount"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    :goto_d
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalbarCount:Z

    .line 64
    const-string v0, "ro.ril.samsung_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    .line 69
    return-void

    :cond_18
    move v0, v1

    .line 63
    goto :goto_d
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SamsungExynos3RIL;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .parameter "request"

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_c

    .line 85
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 84
    :pswitch_8
    const-string v0, "DIAL_EMERGENCY"

    goto :goto_7

    .line 83
    nop

    :pswitch_data_c
    .packed-switch 0x2720
        :pswitch_8
    .end packed-switch
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .registers 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 953
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 956
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 963
    return-void
.end method

.method private startPppdCdmaService(Ljava/lang/String;)Z
    .registers 8
    .parameter "ttyname"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 782
    const-string v2, "net.cdma.datalinkinterface"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v2, "ril.cdma.data_state"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v2, "RILJ"

    const-string v3, "Set ril.cdma.data_state=1, waiting for ril.cdma.data_state=2."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v5, :cond_32

    .line 791
    const-wide/16 v2, 0x64

    :try_start_1c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_5d

    .line 793
    :goto_1f
    const-string v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2f

    .line 794
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_2e
    return v1

    .line 790
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 800
    :cond_32
    const/4 v0, 0x1

    :goto_33
    if-ge v0, v5, :cond_4d

    .line 801
    const-wide/16 v2, 0x3e8

    :try_start_37
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_5f

    .line 803
    :goto_3a
    const-string v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4a

    .line 804
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 800
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 810
    :cond_4d
    const-string v1, "RILJ"

    const-string v2, "Didn\'t get ril.cdma.data_state=2 timely, aborting."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v1, "ril.cdma.data_state"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v1, 0x0

    goto :goto_2e

    .line 791
    :catch_5d
    move-exception v2

    goto :goto_1f

    .line 801
    :catch_5f
    move-exception v2

    goto :goto_3a
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 6
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v0, :cond_12

    .line 821
    const-string v0, "RILJ"

    const-string v1, "Set ril.cdma.data_state=0."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string v0, "ril.cdma.data_state"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 826
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_f

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 340
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungExynos3RIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 361
    :goto_e
    return-void

    .line 344
    :cond_f
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 345
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    if-nez p3, :cond_53

    .line 350
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    :goto_2b
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_e

    .line 352
    :cond_53
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2b
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 9
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 366
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 369
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 377
    return-void
.end method

.method protected getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .registers 6
    .parameter "stateInt"

    .prologue
    .line 680
    packed-switch p1, :pswitch_data_36

    .line 701
    :pswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 704
    .local v0, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_1e
    return-object v0

    .line 683
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_1e

    .line 687
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_22
    const-string v1, "RILJ"

    const-string v2, "SIM is PIN-unlocked now"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_32

    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 698
    :cond_32
    :pswitch_32
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_1e

    .line 680
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_32
        :pswitch_22
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_3
        :pswitch_3
        :pswitch_32
    .end packed-switch
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .registers 8
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 880
    const/16 v0, 0x403

    .line 882
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_53

    .line 883
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 884
    .local v1, sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_53

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    if-eqz v2, :cond_53

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    if-nez v2, :cond_53

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 889
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to prevent \"ring of death\" bug."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_52
    return-void

    .line 895
    :cond_53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_52
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .registers 11
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, error:I
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serial: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 127
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v2, :cond_63

    .line 128
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 332
    .end local v2           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_62
    :goto_62
    return-object v2

    .line 133
    .restart local v2       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_63
    const/4 v1, 0x0

    .line 135
    .local v1, ret:Ljava/lang/Object;
    if-eqz v0, :cond_6c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_cc

    .line 137
    :cond_6c
    :try_start_6c
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_43c

    .line 255
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_8c} :catch_8c

    .line 257
    :catch_8c
    move-exception v4

    .line 260
    .local v4, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    iget-object v6, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_62

    .line 265
    iget-object v6, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v5, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 266
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_62

    .line 143
    .end local v4           #tr:Ljava/lang/Throwable;
    :sswitch_c8
    :try_start_c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_8c

    move-result-object v1

    .line 275
    .end local v1           #ret:Ljava/lang/Object;
    :cond_cc
    :goto_cc
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_5fa

    .line 288
    :cond_d1
    :goto_d1
    :pswitch_d1
    if-eqz v0, :cond_e5

    .line 289
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_604

    .line 306
    :cond_d8
    :goto_d8
    const/4 v6, -0x1

    if-ne v0, v6, :cond_436

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x19

    if-ne v6, v7, :cond_436

    .line 310
    :try_start_e1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_e4} :catch_404

    move-result-object v1

    .line 324
    :cond_e5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 327
    iget-object v6, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_62

    .line 328
    iget-object v6, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 329
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_62

    .line 144
    .restart local v1       #ret:Ljava/lang/Object;
    :sswitch_129
    :try_start_129
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 145
    :sswitch_12e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 146
    :sswitch_133
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 147
    :sswitch_138
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 148
    :sswitch_13d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 149
    :sswitch_142
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 150
    :sswitch_147
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_cc

    .line 151
    :sswitch_14c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 152
    :sswitch_152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 153
    :sswitch_158
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 154
    :sswitch_15e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 155
    :sswitch_164
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 156
    :sswitch_16a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 157
    :sswitch_170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 158
    :sswitch_176
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 159
    :sswitch_17c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 160
    :sswitch_182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 161
    :sswitch_188
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 162
    :sswitch_18e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 163
    :sswitch_194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 164
    :sswitch_19a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 165
    :sswitch_1a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 166
    :sswitch_1a6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 167
    :sswitch_1ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 168
    :sswitch_1b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 169
    :sswitch_1b8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 170
    :sswitch_1be
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 171
    :sswitch_1c4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 172
    :sswitch_1ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 173
    :sswitch_1d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 174
    :sswitch_1d6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 175
    :sswitch_1dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 176
    :sswitch_1e2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 177
    :sswitch_1e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 178
    :sswitch_1ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 179
    :sswitch_1f4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 180
    :sswitch_1fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 181
    :sswitch_200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 182
    :sswitch_206
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 183
    :sswitch_20c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 184
    :sswitch_212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 185
    :sswitch_218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 186
    :sswitch_21e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 187
    :sswitch_224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 188
    :sswitch_22a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 189
    :sswitch_230
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 190
    :sswitch_236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 191
    :sswitch_23c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 192
    :sswitch_242
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 193
    :sswitch_248
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 194
    :sswitch_24e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 195
    :sswitch_254
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 196
    :sswitch_25a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 197
    :sswitch_260
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 198
    :sswitch_266
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 199
    :sswitch_26c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 200
    :sswitch_272
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 201
    :sswitch_278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 202
    :sswitch_27e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 203
    :sswitch_284
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 204
    :sswitch_28a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 205
    :sswitch_290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 206
    :sswitch_296
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 207
    :sswitch_29c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 208
    :sswitch_2a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 209
    :sswitch_2a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 210
    :sswitch_2ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 211
    :sswitch_2b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 212
    :sswitch_2ba
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 213
    :sswitch_2c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 214
    :sswitch_2c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 215
    :sswitch_2cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 216
    :sswitch_2d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 217
    :sswitch_2d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 218
    :sswitch_2de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 219
    :sswitch_2e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 220
    :sswitch_2ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 221
    :sswitch_2f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 222
    :sswitch_2f6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 223
    :sswitch_2fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 224
    :sswitch_302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 225
    :sswitch_308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 226
    :sswitch_30e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 227
    :sswitch_314
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 228
    :sswitch_31a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 229
    :sswitch_320
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 230
    :sswitch_326
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 231
    :sswitch_32c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 232
    :sswitch_332
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 233
    :sswitch_338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 234
    :sswitch_33e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 235
    :sswitch_344
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 236
    :sswitch_34a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 237
    :sswitch_350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 238
    :sswitch_356
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 239
    :sswitch_35c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 240
    :sswitch_362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 241
    :sswitch_368
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 242
    :sswitch_36e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 243
    :sswitch_374
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 244
    :sswitch_37a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 245
    :sswitch_380
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 246
    :sswitch_386
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 247
    :sswitch_38c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 248
    :sswitch_392
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 249
    :sswitch_398
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 250
    :sswitch_39e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 251
    :sswitch_3a4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, ret:Ljava/util/ArrayList;
    goto/16 :goto_cc

    .line 252
    .local v1, ret:Ljava/lang/Object;
    :sswitch_3aa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_cc

    .line 253
    :sswitch_3b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3b3
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_3b3} :catch_8c

    move-result-object v1

    goto/16 :goto_cc

    .line 278
    .end local v1           #ret:Ljava/lang/Object;
    :pswitch_3b6
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_d1

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 283
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_d1

    .line 295
    :sswitch_3dd
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_d8

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 300
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_d8

    .line 311
    :catch_404
    move-exception v4

    .line 312
    .restart local v4       #tr:Ljava/lang/Throwable;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, Processing Samsung SMS fix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto/16 :goto_62

    .line 319
    .end local v4           #tr:Ljava/lang/Throwable;
    :cond_436
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto/16 :goto_62

    .line 137
    nop

    :sswitch_data_43c
    .sparse-switch
        0x1 -> :sswitch_c8
        0x2 -> :sswitch_129
        0x3 -> :sswitch_12e
        0x4 -> :sswitch_133
        0x5 -> :sswitch_138
        0x6 -> :sswitch_13d
        0x7 -> :sswitch_142
        0x8 -> :sswitch_147
        0x9 -> :sswitch_14c
        0xa -> :sswitch_152
        0xb -> :sswitch_158
        0xc -> :sswitch_15e
        0xd -> :sswitch_164
        0xe -> :sswitch_16a
        0xf -> :sswitch_170
        0x10 -> :sswitch_176
        0x11 -> :sswitch_17c
        0x12 -> :sswitch_182
        0x13 -> :sswitch_188
        0x14 -> :sswitch_18e
        0x15 -> :sswitch_194
        0x16 -> :sswitch_19a
        0x17 -> :sswitch_1a0
        0x18 -> :sswitch_1a6
        0x19 -> :sswitch_1ac
        0x1a -> :sswitch_1b2
        0x1b -> :sswitch_1b8
        0x1c -> :sswitch_1be
        0x1d -> :sswitch_1c4
        0x1e -> :sswitch_1ca
        0x1f -> :sswitch_1d0
        0x20 -> :sswitch_1d6
        0x21 -> :sswitch_1dc
        0x22 -> :sswitch_1e2
        0x23 -> :sswitch_1e8
        0x24 -> :sswitch_1ee
        0x25 -> :sswitch_1f4
        0x26 -> :sswitch_1fa
        0x27 -> :sswitch_200
        0x28 -> :sswitch_206
        0x29 -> :sswitch_20c
        0x2a -> :sswitch_212
        0x2b -> :sswitch_218
        0x2c -> :sswitch_21e
        0x2d -> :sswitch_224
        0x2e -> :sswitch_22a
        0x2f -> :sswitch_230
        0x30 -> :sswitch_236
        0x31 -> :sswitch_23c
        0x32 -> :sswitch_242
        0x33 -> :sswitch_248
        0x34 -> :sswitch_24e
        0x35 -> :sswitch_254
        0x36 -> :sswitch_25a
        0x37 -> :sswitch_260
        0x38 -> :sswitch_266
        0x39 -> :sswitch_26c
        0x3a -> :sswitch_272
        0x3b -> :sswitch_278
        0x3c -> :sswitch_27e
        0x3d -> :sswitch_284
        0x3e -> :sswitch_28a
        0x3f -> :sswitch_290
        0x40 -> :sswitch_296
        0x41 -> :sswitch_29c
        0x42 -> :sswitch_2a2
        0x43 -> :sswitch_2a8
        0x44 -> :sswitch_2ae
        0x45 -> :sswitch_2b4
        0x46 -> :sswitch_2ba
        0x47 -> :sswitch_2c0
        0x48 -> :sswitch_2c6
        0x49 -> :sswitch_2cc
        0x4a -> :sswitch_2d2
        0x4b -> :sswitch_2d8
        0x4c -> :sswitch_2de
        0x4d -> :sswitch_2e4
        0x4e -> :sswitch_2ea
        0x4f -> :sswitch_2f0
        0x50 -> :sswitch_2f6
        0x51 -> :sswitch_2fc
        0x52 -> :sswitch_302
        0x53 -> :sswitch_308
        0x54 -> :sswitch_30e
        0x55 -> :sswitch_314
        0x56 -> :sswitch_34a
        0x57 -> :sswitch_31a
        0x58 -> :sswitch_320
        0x59 -> :sswitch_326
        0x5a -> :sswitch_32c
        0x5b -> :sswitch_332
        0x5c -> :sswitch_338
        0x5d -> :sswitch_33e
        0x5e -> :sswitch_344
        0x5f -> :sswitch_350
        0x60 -> :sswitch_356
        0x61 -> :sswitch_35c
        0x62 -> :sswitch_362
        0x63 -> :sswitch_374
        0x64 -> :sswitch_368
        0x65 -> :sswitch_36e
        0x66 -> :sswitch_37a
        0x67 -> :sswitch_380
        0x68 -> :sswitch_386
        0x69 -> :sswitch_38c
        0x6a -> :sswitch_392
        0x6b -> :sswitch_398
        0x6c -> :sswitch_39e
        0x6d -> :sswitch_3a4
        0x6e -> :sswitch_3aa
        0x2720 -> :sswitch_3b0
    .end sparse-switch

    .line 275
    :pswitch_data_5fa
    .packed-switch 0x3
        :pswitch_3b6
        :pswitch_d1
        :pswitch_3b6
    .end packed-switch

    .line 289
    :sswitch_data_604
    .sparse-switch
        0x2 -> :sswitch_3dd
        0x4 -> :sswitch_3dd
        0x6 -> :sswitch_3dd
        0x7 -> :sswitch_3dd
        0x2b -> :sswitch_3dd
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 26
    .parameter "p"

    .prologue
    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 386
    .local v7, dataPosition:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 388
    .local v16, response:I
    sparse-switch v16, :sswitch_data_24c

    .line 413
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 416
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 527
    :cond_13
    :goto_13
    return-void

    .line 395
    :sswitch_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .line 420
    :goto_18
    sparse-switch v16, :sswitch_data_27a

    goto :goto_13

    .line 442
    :sswitch_1c
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 448
    .local v13, nitzReceiveTime:J
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, result:[Ljava/lang/Object;
    move-object/from16 v12, v18

    .line 450
    check-cast v12, Ljava/lang/String;

    .line 451
    .local v12, nitz:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " RIL_UNSOL_NITZ_TIME_RECEIVED length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "[/:,+-]"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 455
    const-string v19, "[/:,+-]"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_83

    .line 456
    const/16 v19, 0x0

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 458
    :cond_83
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " RIL_UNSOL_NITZ_TIME_RECEIVED striped nitz = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 461
    const/16 v19, 0x0

    aput-object v12, v17, v19

    .line 462
    const/16 v19, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v17, v19

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15b

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_13

    .line 396
    .end local v12           #nitz:Ljava/lang/String;
    .end local v13           #nitzReceiveTime:J
    .end local v17           #result:[Ljava/lang/Object;
    :sswitch_cf
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 397
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_d5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v18

    .local v18, ret:Ljava/util/ArrayList;
    goto/16 :goto_18

    .line 398
    .end local v18           #ret:Ljava/util/ArrayList;
    :sswitch_db
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 399
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_e1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 404
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_e7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 405
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_ed
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 406
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_f3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 407
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_f9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 408
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_ff
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 409
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_105
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_18

    .line 422
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_10b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLog(I)V

    .line 424
    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v19, v18, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14d

    const/4 v11, 0x1

    .line 425
    .local v11, newHsdpa:Z
    :goto_123
    const-string v19, "gsm.network.type"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, curState:Ljava/lang/String;
    const/4 v5, 0x0

    .line 428
    .local v5, curHsdpa:Z
    const-string v19, "HSDPA"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14f

    .line 429
    const/4 v5, 0x1

    .line 435
    :cond_135
    if-eq v5, v11, :cond_13

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_13

    .line 424
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v11           #newHsdpa:Z
    :cond_14d
    const/4 v11, 0x0

    goto :goto_123

    .line 430
    .restart local v5       #curHsdpa:Z
    .restart local v6       #curState:Ljava/lang/String;
    .restart local v11       #newHsdpa:Z
    :cond_14f
    const-string v19, "UMTS"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_135

    goto/16 :goto_13

    .line 470
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v11           #newHsdpa:Z
    .restart local v12       #nitz:Ljava/lang/String;
    .restart local v13       #nitzReceiveTime:J
    .restart local v17       #result:[Ljava/lang/Object;
    :cond_15b
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_13

    .line 479
    .end local v12           #nitz:Ljava/lang/String;
    .end local v13           #nitzReceiveTime:J
    .end local v17           #result:[Ljava/lang/Object;
    :sswitch_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_13

    .line 486
    :sswitch_185
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b2

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_13

    .line 495
    :cond_1b2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    goto/16 :goto_13

    .line 503
    :sswitch_1ba
    :try_start_1ba
    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0
    :try_end_1bf
    .catch Ljava/lang/ClassCastException; {:try_start_1ba .. :try_end_1bf} :catch_1dc

    .line 509
    .local v10, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1c3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 510
    .local v15, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/SamsungExynos3RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_1c3

    .line 504
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v15           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1dc
    move-exception v8

    .line 505
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v19, "RILJ"

    const-string v20, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .end local v8           #e:Ljava/lang/ClassCastException;
    :sswitch_1ea
    move-object/from16 v4, v18

    .line 516
    check-cast v4, Ljava/lang/String;

    .line 517
    .local v4, amString:Ljava/lang/String;
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Executing AM: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :try_start_208
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "am "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_224} :catch_226

    goto/16 :goto_13

    .line 521
    :catch_226
    move-exception v8

    .line 522
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 523
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "am "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " could not be executed."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 388
    :sswitch_data_24c
    .sparse-switch
        0x3f0 -> :sswitch_14
        0x3f1 -> :sswitch_cf
        0x3f5 -> :sswitch_e1
        0x403 -> :sswitch_d5
        0x2aff -> :sswitch_e7
        0x2b00 -> :sswitch_ed
        0x2b01 -> :sswitch_f3
        0x2b02 -> :sswitch_105
        0x2b03 -> :sswitch_ff
        0x2b04 -> :sswitch_f9
        0x2b08 -> :sswitch_db
    .end sparse-switch

    .line 420
    :sswitch_data_27a
    .sparse-switch
        0x3f0 -> :sswitch_1c
        0x3f1 -> :sswitch_161
        0x3f5 -> :sswitch_185
        0x403 -> :sswitch_1ba
        0x2b02 -> :sswitch_1ea
        0x2b08 -> :sswitch_10b
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 19
    .parameter "p"

    .prologue
    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 537
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 538
    .local v7, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    .line 540
    .local v9, size:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel dataAvail = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 545
    .local v6, num:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5e
    if-ge v3, v6, :cond_31a

    .line 548
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v12, :cond_2ed

    .line 549
    new-instance v2, Lcom/android/internal/telephony/SamsungExynos3RIL$SamsungDriverCall;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL$SamsungDriverCall;-><init>(Lcom/android/internal/telephony/SamsungExynos3RIL;)V

    .line 553
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    :goto_6d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2f4

    const/4 v12, 0x1

    :goto_8a
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2f7

    const/4 v12, 0x1

    :goto_93
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 559
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2fa

    const/4 v12, 0x1

    :goto_a2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2fd

    const/4 v4, 0x1

    .line 561
    .local v4, isVideo:Z
    :goto_ab
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_300

    const/4 v12, 0x1

    :goto_b2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 564
    .local v5, np:I
    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 569
    .local v11, uusInfoPresent:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMpty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMT = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "als = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVoice = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "number = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numberPresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "namePresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uusInfoPresent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v12, 0x1

    if-ne v11, v12, :cond_303

    .line 584
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 585
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 586
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 588
    .local v10, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 589
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v10           #userData:[B
    :goto_2ca
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 604
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_30b

    .line 607
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 608
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_2e9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5e

    .line 551
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_2ed
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .restart local v2       #dc:Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_6d

    .line 556
    :cond_2f4
    const/4 v12, 0x0

    goto/16 :goto_8a

    .line 557
    :cond_2f7
    const/4 v12, 0x0

    goto/16 :goto_93

    .line 559
    :cond_2fa
    const/4 v12, 0x0

    goto/16 :goto_a2

    .line 560
    :cond_2fd
    const/4 v4, 0x0

    goto/16 :goto_ab

    .line 561
    .restart local v4       #isVideo:Z
    :cond_300
    const/4 v12, 0x0

    goto/16 :goto_b2

    .line 598
    .restart local v5       #np:I
    .restart local v11       #uusInfoPresent:I
    :cond_303
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ca

    .line 610
    :cond_30b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 611
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e9

    .line 615
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_31a
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 617
    return-object v8
.end method

.method protected responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 832
    .local v1, response:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v9, :cond_35

    .line 834
    const-string v3, "ril.prl_ver_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 835
    .local v0, prlVersion:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v1, v6

    aput-object v3, v2, v6

    aget-object v3, v1, v5

    aput-object v3, v2, v5

    aget-object v3, v1, v7

    aput-object v3, v2, v7

    aget-object v3, v1, v8

    aput-object v3, v2, v8

    aput-object v0, v2, v9

    .end local v1           #response:[Ljava/lang/String;
    .local v2, response:[Ljava/lang/String;
    move-object v1, v2

    .line 839
    .end local v0           #prlVersion:Ljava/lang/String;
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :cond_35
    return-object v1
.end method

.method protected responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 624
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_23

    array-length v1, v0

    if-lez v1, :cond_23

    aget v1, v0, v3

    const v2, 0xffff

    if-ne v1, v2, :cond_23

    .line 628
    const-string v1, "RILJ"

    const-string v2, "Overriding ERROR_UNSPECIFIED fail cause with NORMAL_CLEARING."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/16 v1, 0x10

    aput v1, v0, v3

    .line 632
    :cond_23
    return-object v0
.end method

.method protected responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 726
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_1c

    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1c

    .line 727
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from global to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    aput v3, v0, v3

    .line 731
    :cond_1c
    return-object v0
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 11
    .parameter "p"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 737
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 738
    .local v0, dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 740
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v8, :cond_d4

    .line 741
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 743
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_c0

    .line 745
    aget-object v3, v2, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL;->startPppdCdmaService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 747
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 778
    :cond_30
    :goto_30
    return-object v0

    .line 752
    :cond_31
    const-string v3, "net.cdma.ppp.interface"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, ifprop:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".local-ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 756
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".remote-ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 757
    new-array v3, v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    goto/16 :goto_30

    .line 760
    .end local v1           #ifprop:Ljava/lang/String;
    :cond_c0
    aget-object v3, v2, v6

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 762
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_30

    .line 763
    aget-object v3, v2, v8

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    goto/16 :goto_30

    .line 767
    :cond_d4
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_e6

    .line 771
    const-string v3, "RILJ"

    const-string v4, "Set ril.cdma.data_state=0 to make sure pppd_cdma is stopped."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v3, "ril.cdma.data_state"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_e6
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    goto/16 :goto_30
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 14
    .parameter "p"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x3

    .line 638
    const/4 v1, 0x7

    new-array v10, v1, [I

    .line 639
    .local v10, response:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_9
    const/4 v1, 0x7

    if-ge v9, v1, :cond_15

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v10, v9

    .line 639
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 643
    :cond_15
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_3d

    .line 644
    aget v1, v10, v4

    if-gez v1, :cond_22

    .line 645
    aget v1, v10, v4

    neg-int v1, v1

    aput v1, v10, v4

    .line 669
    :cond_22
    :goto_22
    new-instance v0, Landroid/telephony/SignalStrength;

    aget v1, v10, v8

    const/4 v2, 0x1

    aget v2, v10, v2

    aget v3, v10, v3

    aget v4, v10, v4

    aget v5, v10, v5

    aget v6, v10, v6

    const/4 v7, 0x6

    aget v7, v10, v7

    iget-boolean v11, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v11, :cond_39

    const/4 v8, 0x1

    :cond_39
    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 672
    .local v0, signalStrength:Landroid/telephony/SignalStrength;
    return-object v0

    .line 652
    .end local v0           #signalStrength:Landroid/telephony/SignalStrength;
    :cond_3d
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalbarCount:Z

    if-eqz v1, :cond_81

    .line 656
    aget v1, v10, v8

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x3

    aput v1, v10, v8

    .line 660
    :goto_4d
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v10, v1

    .line 661
    aget v1, v10, v3

    if-gez v1, :cond_88

    const/16 v1, -0x78

    :goto_57
    aput v1, v10, v3

    .line 662
    aget v1, v10, v4

    if-gez v1, :cond_8c

    const/16 v1, -0xa0

    :goto_5f
    aput v1, v10, v4

    .line 663
    aget v1, v10, v5

    if-gez v1, :cond_90

    const/16 v1, -0x78

    :goto_67
    aput v1, v10, v5

    .line 664
    aget v1, v10, v6

    if-gez v1, :cond_94

    const/4 v1, -0x1

    :goto_6e
    aput v1, v10, v6

    .line 665
    const/4 v1, 0x6

    aget v1, v10, v1

    if-ltz v1, :cond_7c

    const/4 v1, 0x6

    aget v1, v10, v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_22

    .line 666
    :cond_7c
    const/4 v1, 0x6

    const/4 v2, -0x1

    aput v2, v10, v1

    goto :goto_22

    .line 658
    :cond_81
    aget v1, v10, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v10, v8

    goto :goto_4d

    .line 661
    :cond_88
    aget v1, v10, v3

    neg-int v1, v1

    goto :goto_57

    .line 662
    :cond_8c
    aget v1, v10, v4

    neg-int v1, v1

    goto :goto_5f

    .line 663
    :cond_90
    aget v1, v10, v5

    neg-int v1, v1

    goto :goto_67

    .line 664
    :cond_94
    aget v1, v10, v6

    neg-int v1, v1

    goto :goto_6e
.end method

.method protected responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 8
    .parameter "p"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x10

    const/4 v2, 0x6

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 711
    .local v0, response:[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_39

    array-length v1, v0

    if-le v1, v2, :cond_39

    .line 713
    aget-object v1, v0, v4

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 714
    aget-object v1, v0, v5

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 715
    aget-object v1, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 718
    :cond_39
    return-object v0
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 2

    .prologue
    .line 925
    const-string v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 967
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 971
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    .line 973
    :cond_1a
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 8
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 938
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 941
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 942
    .local v2, mobileState:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1b

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_26

    .line 943
    :cond_1b
    new-instance v1, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/SamsungExynos3RIL;Landroid/content/Context;)V

    .line 944
    .local v1, handler:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 948
    .end local v1           #handler:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;
    :goto_25
    return-void

    .line 946
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_25
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 8
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    const-string v2, "persist.ril.enable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .local v0, allow:Z
    if-nez v0, :cond_b

    .line 110
    :goto_a
    return-void

    .line 97
    :cond_b
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 99
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_45

    .line 100
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_a

    .line 103
    :cond_45
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d
.end method
