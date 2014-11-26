.class public Lcom/android/internal/telephony/SamsungExynos5KorRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungExynos5KorRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungExynos5KorRIL$1;,
        Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_ACCESS_PHONEBOOK_ENTRY:I = 0x2719

.field static final RIL_REQUEST_ACTIVATE_DATA_CALL:I = 0x2731

.field static final RIL_REQUEST_CALL_DEFLECTION:I = 0x271b

.field static final RIL_REQUEST_CDMA_GET_DATAPROFILE:I = 0x2739

.field static final RIL_REQUEST_CDMA_GET_SYSTEMPROPERTIES:I = 0x273b

.field static final RIL_REQUEST_CDMA_SET_DATAPROFILE:I = 0x273a

.field static final RIL_REQUEST_CDMA_SET_SYSTEMPROPERTIES:I = 0x273c

.field static final RIL_REQUEST_CHANGE_SIM_PERSO:I = 0x2732

.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_REQUEST_DIAL_VIDEO_CALL:I = 0x271a

.field static final RIL_REQUEST_ENTER_SIM_PERSO:I = 0x2733

.field static final RIL_REQUEST_GET_BARCODE_NUMBER:I = 0x2727

.field static final RIL_REQUEST_GET_CELL_BROADCAST_CONFIG:I = 0x2712

.field static final RIL_REQUEST_GET_LINE_ID:I = 0x2723

.field static final RIL_REQUEST_GET_MANUFACTURE_DATE_NUMBER:I = 0x2726

.field static final RIL_REQUEST_GET_PHONEBOOK_ENTRY:I = 0x2718

.field static final RIL_REQUEST_GET_PHONEBOOK_STORAGE_INFO:I = 0x2717

.field static final RIL_REQUEST_GET_PREFERRED_NETWORK_LIST:I = 0x2743

.field static final RIL_REQUEST_GET_SERIAL_NUMBER:I = 0x2725

.field static final RIL_REQUEST_GET_STOREAD_MSG_COUNT:I = 0x2721

.field static final RIL_REQUEST_GET_TIME_INFO:I = 0x2734

.field static final RIL_REQUEST_HANGUP_VT:I = 0x2744

.field static final RIL_REQUEST_LOCK_INFO:I = 0x271e

.field static final RIL_REQUEST_MODEM_HANGUP:I = 0x2740

.field static final RIL_REQUEST_OMADM_CLIENT_START_SESSION:I = 0x2737

.field static final RIL_REQUEST_OMADM_SEND_DATA:I = 0x2738

.field static final RIL_REQUEST_OMADM_SERVER_START_SESSION:I = 0x2736

.field static final RIL_REQUEST_OMADM_SETUP_SESSION:I = 0x2735

.field static final RIL_REQUEST_PS_ATTACH:I = 0x272f

.field static final RIL_REQUEST_PS_DETACH:I = 0x2730

.field static final RIL_REQUEST_READ_SMS_FROM_SIM:I = 0x271c

.field static final RIL_REQUEST_SEND_ENCODED_USSD:I = 0x2715

.field static final RIL_REQUEST_SEND_SMS_COUNT:I = 0x273d

.field static final RIL_REQUEST_SEND_SMS_MSG:I = 0x273e

.field static final RIL_REQUEST_SEND_SMS_MSG_READ_STATUS:I = 0x273f

.field static final RIL_REQUEST_SET_LINE_ID:I = 0x2724

.field static final RIL_REQUEST_SET_PDA_MEMORY_STATUS:I = 0x2716

.field static final RIL_REQUEST_SET_PREFERRED_NETWORK_LIST:I = 0x2742

.field static final RIL_REQUEST_SET_SIM_POWER:I = 0x2741

.field static final RIL_REQUEST_SIM_AUTH:I = 0x272e

.field static final RIL_REQUEST_SIM_CLOSE_CHANNEL:I = 0x272c

.field static final RIL_REQUEST_SIM_OPEN_CHANNEL:I = 0x272b

.field static final RIL_REQUEST_SIM_TRANSMIT_BASIC:I = 0x272a

.field static final RIL_REQUEST_SIM_TRANSMIT_CHANNEL:I = 0x272d

.field static final RIL_REQUEST_STK_SIM_INIT_EVENT:I = 0x2722

.field static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_BOOTSTRAP:I = 0x2728

.field static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_NAF:I = 0x2729

.field static final RIL_REQUEST_USIM_PB_CAPA:I = 0x271d

.field static final RIL_UNSOL_AM:I = 0x2b02

.field static final RIL_UNSOL_DATA_SUSPEND_RESUME:I = 0x2b04

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_DHA_STATE:I = 0x2b0b

.field static final RIL_UNSOL_DUN:I = 0x2b12

.field static final RIL_UNSOL_DUN_CALL_STATUS:I = 0x2afc

.field static final RIL_UNSOL_DUN_PIN_CONTROL_SIGNAL:I = 0x2b03

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_IPV6_ADDR:I = 0x2b0e

.field static final RIL_UNSOL_MIP_CONNECT_STATUS:I = 0x2b18

.field static final RIL_UNSOL_NWK_INIT_DISC_REQUEST:I = 0x2b0f

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_OMADM_SEND_DATA:I = 0x2b11

.field static final RIL_UNSOL_RELEASE_COMPLETE_MESSAGE:I = 0x2af9

.field static final RIL_UNSOL_RESPONSE_HANDOVER:I = 0x2b0d

.field static final RIL_UNSOL_RTS_INDICATION:I = 0x2b10

.field static final RIL_UNSOL_SAP:I = 0x2b05

.field static final RIL_UNSOL_SIM_SMS_STORAGE_AVAILALE:I = 0x2b07

.field static final RIL_UNSOL_STK_CALL_CONTROL_RESULT:I = 0x2afb

.field static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa

.field static final RIL_UNSOL_SYSTEM_REBOOT:I = 0x2b13

.field static final RIL_UNSOL_TWO_MIC_STATE:I = 0x2b0a

.field static final RIL_UNSOL_UART:I = 0x2b0c

.field static final RIL_UNSOL_UTS_GETSMSCOUNT:I = 0x2b15

.field static final RIL_UNSOL_UTS_GETSMSMSG:I = 0x2b16

.field static final RIL_UNSOL_UTS_GET_UNREAD_SMS_STATUS:I = 0x2b17

.field static final RIL_UNSOL_VOICE_PRIVACY_CHANGED:I = 0x2b14

.field static final RIL_UNSOL_WB_AMR_STATE:I = 0x2b09


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private mIsGBModem:Z

.field protected mSamsungExynos5KorRILHandler:Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

.field protected mSamsungExynos5KorRILThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 159
    const-string v0, "ro.ril.gbmodem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mIsGBModem:Z

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->audioManager:Landroid/media/AudioManager;

    .line 164
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mQANElements:I

    .line 165
    return-void
.end method

.method private NeedReconnect()Z
    .registers 5

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 191
    .local v1, ni_active:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SamsungExynos5KorRIL;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .parameter "request"

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_c

    .line 171
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 170
    :pswitch_8
    const-string v0, "DIAL_EMERGENCY"

    goto :goto_7

    .line 169
    nop

    :pswitch_data_c
    .packed-switch 0x2720
        :pswitch_8
    .end packed-switch
.end method

.method static samsungResponseToString(I)Ljava/lang/String;
    .registers 3
    .parameter "request"

    .prologue
    .line 662
    sparse-switch p0, :sswitch_data_30

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 664
    :sswitch_1d
    const-string v0, "RIL_UNSOL_AM"

    goto :goto_1c

    .line 665
    :sswitch_20
    const-string v0, "RIL_UNSOL_DUN_PIN_CONTROL_SIGNAL"

    goto :goto_1c

    .line 666
    :sswitch_23
    const-string v0, "RIL_UNSOL_DATA_SUSPEND_RESUME"

    goto :goto_1c

    .line 667
    :sswitch_26
    const-string v0, "RIL_UNSOL_STK_CALL_CONTROL_RESULT"

    goto :goto_1c

    .line 668
    :sswitch_29
    const-string v0, "RIL_UNSOL_TWO_MIC_STATE"

    goto :goto_1c

    .line 669
    :sswitch_2c
    const-string v0, "RIL_UNSOL_WB_AMR_STATE"

    goto :goto_1c

    .line 662
    nop

    :sswitch_data_30
    .sparse-switch
        0x2afb -> :sswitch_26
        0x2b02 -> :sswitch_1d
        0x2b03 -> :sswitch_20
        0x2b04 -> :sswitch_23
        0x2b09 -> :sswitch_2c
        0x2b0a -> :sswitch_29
    .end sparse-switch
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .registers 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 228
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 231
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 238
    return-void
.end method

.method private setWbAmr(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 696
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 697
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->audioManager:Landroid/media/AudioManager;

    const-string v1, "wb_amr=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 703
    :goto_11
    return-void

    .line 700
    :cond_12
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=off"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->audioManager:Landroid/media/AudioManager;

    const-string v1, "wb_amr=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_11
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 512
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 513
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 534
    :goto_a
    return-void

    .line 517
    :cond_b
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 518
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    if-nez p3, :cond_4f

    .line 523
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    :goto_27
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_a

    .line 525
    :cond_4f
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_27
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 9
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 539
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

    .line 541
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 542
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

    .line 543
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 550
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 883
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 886
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 887
    const-string v1, "RILJ"

    const-string v2, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE blocked!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 870
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 872
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 875
    iget v1, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mRilVersion:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_33

    .line 876
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 879
    :goto_32
    return-void

    .line 878
    :cond_33
    const-string v1, "RILJ"

    const-string v2, "RIL_REQUEST_VOICE_RADIO_TECH blocked!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .registers 12
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 328
    const/4 v1, 0x0

    .line 330
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 331
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 337
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_34

    .line 338
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

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 505
    .end local v3           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_33
    :goto_33
    return-object v3

    .line 343
    .restart local v3       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_34
    const/4 v2, 0x0

    .line 345
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_9d

    .line 347
    :cond_3d
    :try_start_3d
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_398

    .line 459
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
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_5d} :catch_5d

    .line 461
    :catch_5d
    move-exception v5

    .line 464
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

    invoke-static {v9}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_33

    .line 469
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 470
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 349
    .end local v5           #tr:Ljava/lang/Throwable;
    :sswitch_99
    :try_start_99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_5d

    move-result-object v2

    .line 477
    .end local v2           #ret:Ljava/lang/Object;
    :cond_9d
    :goto_9d
    if-eqz v0, :cond_322

    .line 479
    const/4 v7, -0x1

    if-ne v0, v7, :cond_a8

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v8, 0x19

    if-eq v7, v8, :cond_31e

    .line 481
    :cond_a8
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_33

    .line 350
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_ac
    :try_start_ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 351
    :sswitch_b1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 352
    :sswitch_b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 353
    :sswitch_bb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 354
    :sswitch_c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 355
    :sswitch_c5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 356
    :sswitch_ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 357
    :sswitch_cf
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 358
    :sswitch_d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 359
    :sswitch_d9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 360
    :sswitch_de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 361
    :sswitch_e3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 362
    :sswitch_e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 363
    :sswitch_ed
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 364
    :sswitch_f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 365
    :sswitch_f7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 366
    :sswitch_fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 367
    :sswitch_101
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 368
    :sswitch_106
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 369
    :sswitch_10b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 370
    :sswitch_110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 371
    :sswitch_115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 372
    :sswitch_11a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 373
    :sswitch_120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 374
    :sswitch_126
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 375
    :sswitch_12c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 376
    :sswitch_132
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 377
    :sswitch_138
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 378
    :sswitch_13e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 379
    :sswitch_144
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 380
    :sswitch_14a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 381
    :sswitch_150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 382
    :sswitch_156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 383
    :sswitch_15c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 384
    :sswitch_162
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 385
    :sswitch_168
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 386
    :sswitch_16e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 387
    :sswitch_174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 388
    :sswitch_17a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 389
    :sswitch_180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 390
    :sswitch_186
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 391
    :sswitch_18c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 392
    :sswitch_192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 393
    :sswitch_198
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 394
    :sswitch_19e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 395
    :sswitch_1a4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 396
    :sswitch_1aa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 397
    :sswitch_1b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 398
    :sswitch_1b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 399
    :sswitch_1bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 400
    :sswitch_1c2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 401
    :sswitch_1c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 402
    :sswitch_1ce
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 403
    :sswitch_1d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 404
    :sswitch_1da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 405
    :sswitch_1e0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 406
    :sswitch_1e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 407
    :sswitch_1ec
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 408
    :sswitch_1f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 409
    :sswitch_1f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 410
    :sswitch_1fe
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 411
    :sswitch_204
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 412
    :sswitch_20a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 413
    :sswitch_210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 414
    :sswitch_216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 415
    :sswitch_21c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 416
    :sswitch_222
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 417
    :sswitch_228
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 418
    :sswitch_22e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 419
    :sswitch_234
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 420
    :sswitch_23a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 421
    :sswitch_240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 422
    :sswitch_246
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 423
    :sswitch_24c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 424
    :sswitch_252
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 425
    :sswitch_258
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 426
    :sswitch_25e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 427
    :sswitch_264
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 428
    :sswitch_26a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 429
    :sswitch_270
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 430
    :sswitch_276
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 431
    :sswitch_27c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 432
    :sswitch_282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 433
    :sswitch_288
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 434
    :sswitch_28e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 435
    :sswitch_294
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 436
    :sswitch_29a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 437
    :sswitch_2a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 438
    :sswitch_2a6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 439
    :sswitch_2ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 440
    :sswitch_2b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 441
    :sswitch_2b8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 442
    :sswitch_2be
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 443
    :sswitch_2c4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 444
    :sswitch_2ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 445
    :sswitch_2d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 446
    :sswitch_2d6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 447
    :sswitch_2dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 448
    :sswitch_2e2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 449
    :sswitch_2e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 450
    :sswitch_2ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 451
    :sswitch_2f4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 452
    :sswitch_2fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 453
    :sswitch_300
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 454
    :sswitch_306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 455
    :sswitch_30c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 456
    :sswitch_312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 457
    :sswitch_318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_31b
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_31b} :catch_5d

    move-result-object v2

    goto/16 :goto_9d

    .line 486
    .end local v2           #ret:Ljava/lang/Object;
    :cond_31e
    :try_start_31e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_321
    .catch Ljava/lang/Throwable; {:try_start_31e .. :try_end_321} :catch_366

    move-result-object v2

    .line 497
    :cond_322
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

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 500
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_33

    .line 501
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 502
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_33

    .line 487
    :catch_366
    move-exception v5

    .line 488
    .restart local v5       #tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

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

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, Processing Samsung SMS fix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto/16 :goto_33

    .line 347
    :sswitch_data_398
    .sparse-switch
        0x1 -> :sswitch_99
        0x2 -> :sswitch_ac
        0x3 -> :sswitch_b1
        0x4 -> :sswitch_b6
        0x5 -> :sswitch_bb
        0x6 -> :sswitch_c0
        0x7 -> :sswitch_c5
        0x8 -> :sswitch_ca
        0x9 -> :sswitch_cf
        0xa -> :sswitch_d4
        0xb -> :sswitch_d9
        0xc -> :sswitch_de
        0xd -> :sswitch_e3
        0xe -> :sswitch_e8
        0xf -> :sswitch_ed
        0x10 -> :sswitch_f2
        0x11 -> :sswitch_f7
        0x12 -> :sswitch_fc
        0x13 -> :sswitch_101
        0x14 -> :sswitch_106
        0x15 -> :sswitch_10b
        0x16 -> :sswitch_110
        0x17 -> :sswitch_115
        0x18 -> :sswitch_11a
        0x19 -> :sswitch_120
        0x1a -> :sswitch_126
        0x1b -> :sswitch_12c
        0x1c -> :sswitch_132
        0x1d -> :sswitch_138
        0x1e -> :sswitch_13e
        0x1f -> :sswitch_144
        0x20 -> :sswitch_14a
        0x21 -> :sswitch_150
        0x22 -> :sswitch_156
        0x23 -> :sswitch_15c
        0x24 -> :sswitch_162
        0x25 -> :sswitch_168
        0x26 -> :sswitch_16e
        0x27 -> :sswitch_174
        0x28 -> :sswitch_17a
        0x29 -> :sswitch_180
        0x2a -> :sswitch_186
        0x2b -> :sswitch_18c
        0x2c -> :sswitch_192
        0x2d -> :sswitch_198
        0x2e -> :sswitch_19e
        0x2f -> :sswitch_1a4
        0x30 -> :sswitch_1aa
        0x31 -> :sswitch_1b0
        0x32 -> :sswitch_1b6
        0x33 -> :sswitch_1bc
        0x34 -> :sswitch_1c2
        0x35 -> :sswitch_1c8
        0x36 -> :sswitch_1ce
        0x37 -> :sswitch_1d4
        0x38 -> :sswitch_1da
        0x39 -> :sswitch_1e0
        0x3a -> :sswitch_1e6
        0x3b -> :sswitch_1ec
        0x3c -> :sswitch_1f2
        0x3d -> :sswitch_1f8
        0x3e -> :sswitch_1fe
        0x3f -> :sswitch_204
        0x40 -> :sswitch_20a
        0x41 -> :sswitch_210
        0x42 -> :sswitch_216
        0x43 -> :sswitch_21c
        0x44 -> :sswitch_222
        0x45 -> :sswitch_228
        0x46 -> :sswitch_22e
        0x47 -> :sswitch_234
        0x48 -> :sswitch_23a
        0x49 -> :sswitch_240
        0x4a -> :sswitch_246
        0x4b -> :sswitch_24c
        0x4c -> :sswitch_252
        0x4d -> :sswitch_258
        0x4e -> :sswitch_25e
        0x4f -> :sswitch_264
        0x50 -> :sswitch_26a
        0x51 -> :sswitch_270
        0x52 -> :sswitch_276
        0x53 -> :sswitch_27c
        0x54 -> :sswitch_282
        0x55 -> :sswitch_288
        0x56 -> :sswitch_2be
        0x57 -> :sswitch_28e
        0x58 -> :sswitch_294
        0x59 -> :sswitch_29a
        0x5a -> :sswitch_2a0
        0x5b -> :sswitch_2a6
        0x5c -> :sswitch_2ac
        0x5d -> :sswitch_2b2
        0x5e -> :sswitch_2b8
        0x5f -> :sswitch_2c4
        0x60 -> :sswitch_2ca
        0x61 -> :sswitch_2d0
        0x62 -> :sswitch_2d6
        0x63 -> :sswitch_2e8
        0x64 -> :sswitch_2dc
        0x65 -> :sswitch_2e2
        0x66 -> :sswitch_2ee
        0x67 -> :sswitch_2f4
        0x68 -> :sswitch_2fa
        0x69 -> :sswitch_300
        0x6a -> :sswitch_306
        0x6b -> :sswitch_30c
        0x6c -> :sswitch_312
        0x2720 -> :sswitch_318
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 12
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 557
    .local v1, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 559
    .local v4, response:I
    sparse-switch v4, :sswitch_data_15e

    .line 573
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 576
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 657
    :cond_13
    :goto_13
    return-void

    .line 560
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 580
    .local v5, ret:Ljava/lang/Object;
    :goto_18
    sparse-switch v4, :sswitch_data_184

    goto :goto_13

    .line 583
    :sswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 584
    .local v6, state:I
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Radio state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    packed-switch v6, :pswitch_data_1aa

    .line 606
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 607
    .local v3, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New Radio state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_13

    .line 561
    .end local v3           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v5           #ret:Ljava/lang/Object;
    .end local v6           #state:I
    :sswitch_6f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 562
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_74
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 564
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 565
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_7e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 566
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 567
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_88
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 568
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_8d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 569
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_92
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_18

    .line 589
    .restart local v6       #state:I
    :pswitch_97
    const/4 v6, 0x1

    .line 590
    goto :goto_3b

    .line 593
    :pswitch_99
    const/16 v6, 0xa

    .line 594
    goto :goto_3b

    .line 597
    :pswitch_9c
    const/16 v6, 0xa

    .line 600
    const-string v7, "RILJ"

    const-string v8, "SIM is PIN-unlocked now"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_3b

    .line 602
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_3b

    .line 611
    .end local v6           #state:I
    :sswitch_af
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 613
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_13

    .line 614
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v9, v5, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_13

    .line 619
    :sswitch_c2
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 622
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 623
    iget v7, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mPreferredNetworkType:I

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    .line 624
    iget v7, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v7, v9}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 625
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [I

    aget v7, v5, v8

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_13

    .line 629
    .restart local v5       #ret:Ljava/lang/Object;
    :sswitch_dd
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    move-object v0, v5

    .line 630
    check-cast v0, Ljava/lang/String;

    .line 631
    .local v0, amString:Ljava/lang/String;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing AM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_fb
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "am "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_115} :catch_117

    goto/16 :goto_13

    .line 635
    :catch_117
    move-exception v2

    .line 636
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 637
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "am "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " could not be executed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 641
    .end local v0           #amString:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    :sswitch_13b
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 644
    :sswitch_140
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 647
    :sswitch_145
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 650
    :sswitch_14a
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 653
    :sswitch_14f
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    .line 654
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [I

    aget v7, v5, v8

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->setWbAmr(I)V

    goto/16 :goto_13

    .line 559
    nop

    :sswitch_data_15e
    .sparse-switch
        0x3e8 -> :sswitch_14
        0x3fd -> :sswitch_6f
        0x40a -> :sswitch_74
        0x2afb -> :sswitch_88
        0x2b02 -> :sswitch_79
        0x2b03 -> :sswitch_7e
        0x2b04 -> :sswitch_83
        0x2b09 -> :sswitch_92
        0x2b0a -> :sswitch_8d
    .end sparse-switch

    .line 580
    :sswitch_data_184
    .sparse-switch
        0x3e8 -> :sswitch_1c
        0x3fd -> :sswitch_af
        0x40a -> :sswitch_c2
        0x2afb -> :sswitch_145
        0x2b02 -> :sswitch_dd
        0x2b03 -> :sswitch_13b
        0x2b04 -> :sswitch_140
        0x2b09 -> :sswitch_14f
        0x2b0a -> :sswitch_14a
    .end sparse-switch

    .line 586
    :pswitch_data_1aa
    .packed-switch 0x2
        :pswitch_97
        :pswitch_99
        :pswitch_9c
    .end packed-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 19
    .parameter "p"

    .prologue
    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 713
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 714
    .local v7, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    .line 716
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

    .line 717
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

    .line 718
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

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 723
    .local v6, num:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "num = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_76
    if-ge v3, v6, :cond_323

    .line 728
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 729
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2fd

    const/4 v12, 0x1

    :goto_9a
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_300

    const/4 v12, 0x1

    :goto_a3
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_303

    const/4 v12, 0x1

    :goto_b2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_306

    const/4 v4, 0x1

    .line 737
    .local v4, isVideo:Z
    :goto_bb
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_309

    const/4 v12, 0x1

    :goto_c2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 740
    .local v5, np:I
    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 742
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 745
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

    .line 746
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

    .line 747
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

    .line 748
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

    .line 749
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

    .line 750
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

    .line 751
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

    .line 752
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

    .line 753
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

    .line 754
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "np = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
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

    .line 756
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

    .line 757
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

    .line 759
    const/4 v12, 0x1

    if-ne v11, v12, :cond_30c

    .line 760
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 761
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 762
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 764
    .local v10, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 765
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

    .line 768
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

    .line 770
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v10           #userData:[B
    :goto_2da
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 779
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_314

    .line 782
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 783
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_2f9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_76

    .line 732
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_2fd
    const/4 v12, 0x0

    goto/16 :goto_9a

    .line 733
    :cond_300
    const/4 v12, 0x0

    goto/16 :goto_a3

    .line 735
    :cond_303
    const/4 v12, 0x0

    goto/16 :goto_b2

    .line 736
    :cond_306
    const/4 v4, 0x0

    goto/16 :goto_bb

    .line 737
    .restart local v4       #isVideo:Z
    :cond_309
    const/4 v12, 0x0

    goto/16 :goto_c2

    .line 773
    .restart local v5       #np:I
    .restart local v11       #uusInfoPresent:I
    :cond_30c
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2da

    .line 785
    :cond_314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 786
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f9

    .line 790
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_323
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 792
    return-object v8
.end method

.method protected responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 796
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 798
    .local v0, response:[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_12

    .line 802
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mPreferredNetworkType:I

    .line 806
    :cond_12
    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_20

    .line 807
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from GLOBAL to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    aput v3, v0, v3

    .line 811
    :cond_20
    return-object v0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 16
    .parameter "p"

    .prologue
    const/16 v13, 0x63

    const/16 v7, 0x1f

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 817
    const/16 v11, 0xc

    .line 819
    .local v11, numInts:I
    const/4 v8, 0x1

    .line 822
    .local v8, isGsm:Z
    new-array v12, v11, [I

    .line 823
    .local v12, response:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c
    if-ge v9, v11, :cond_17

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v12, v9

    .line 823
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 842
    :cond_17
    aget v1, v12, v5

    .line 843
    .local v1, mGsmSignalStrength:I
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength (raw): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    and-int/lit16 v1, v1, 0xff

    .line 845
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength (corrected): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-ltz v1, :cond_53

    if-le v1, v7, :cond_89

    aget v2, v12, v5

    if-eq v2, v13, :cond_89

    .line 849
    :cond_53
    aget v10, v12, v6

    .line 850
    .local v10, mCdmaDbm:I
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength-fallback (raw): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    if-gez v10, :cond_a0

    .line 853
    const/16 v1, 0x63

    .line 859
    :goto_71
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength-fallback (corrected): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v10           #mCdmaDbm:I
    :cond_89
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v2, 0x1

    aget v2, v12, v2

    aget v3, v12, v6

    const/4 v4, 0x3

    aget v4, v12, v4

    const/4 v5, 0x4

    aget v5, v12, v5

    const/4 v6, 0x5

    aget v6, v12, v6

    const/4 v7, 0x6

    aget v7, v12, v7

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 865
    .local v0, signalStrength:Landroid/telephony/SignalStrength;
    return-object v0

    .line 854
    .end local v0           #signalStrength:Landroid/telephony/SignalStrength;
    .restart local v10       #mCdmaDbm:I
    :cond_a0
    if-le v10, v7, :cond_a7

    if-eq v10, v13, :cond_a7

    .line 855
    const/16 v1, 0x1f

    goto :goto_71

    .line 857
    :cond_a7
    move v1, v10

    goto :goto_71
.end method

.method protected samsungUnsljLog(I)V
    .registers 4
    .parameter "response"

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method protected samsungUnsljLogMore(ILjava/lang/String;)V
    .registers 5
    .parameter "response"
    .parameter "more"

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method protected samsungUnsljLogRet(ILjava/lang/Object;)V
    .registers 5
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method protected samsungUnsljLogvRet(ILjava/lang/Object;)V
    .registers 5
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLogv(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 2

    .prologue
    .line 177
    const-string v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->riljLog(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 7
    .parameter "networkType"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->NeedReconnect()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILHandler:Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

    if-nez v2, :cond_28

    .line 207
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mSamsungExynos5KorRILThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILThread:Landroid/os/HandlerThread;

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 213
    .local v1, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/SamsungExynos5KorRIL;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILHandler:Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

    .line 215
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_28
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILHandler:Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 224
    :goto_2d
    return-void

    .line 217
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILHandler:Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

    if-eqz v2, :cond_36

    .line 218
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILThread:Landroid/os/HandlerThread;

    .line 219
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->mSamsungExynos5KorRILHandler:Lcom/android/internal/telephony/SamsungExynos5KorRIL$ConnectivityHandler;

    .line 221
    :cond_36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos5KorRIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_2d
.end method
