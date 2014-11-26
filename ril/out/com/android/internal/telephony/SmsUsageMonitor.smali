.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    }
.end annotation


# static fields
.field private static final ATTR_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_FREE:Ljava/lang/String; = "free"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_SMS_POLICY:Ljava/lang/String; = "sms-policy"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_PREMIUM:Ljava/lang/String; = "premium"

.field private static final ATTR_STANDARD:Ljava/lang/String; = "standard"

.field static final CATEGORY_FREE_SHORT_CODE:I = 0x1

.field static final CATEGORY_NOT_SHORT_CODE:I = 0x0

.field static final CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field static final CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field static final CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field private static final DBG:Z = false

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0xea60

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x1e

.field public static final PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final PREMIUM_SMS_PERMISSION_UNKNOWN:I = 0x0

.field private static final SHORT_CODE_PATH:Ljava/lang/String; = "/data/misc/sms/codes"

.field private static final SMS_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/misc/sms"

.field private static final SMS_POLICY_FILE_NAME:Ljava/lang/String; = "premium_sms_policy.xml"

.field private static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCODE:Ljava/lang/String; = "shortcode"

.field private static final TAG_SHORTCODES:Ljava/lang/String; = "shortcodes"

.field private static final TAG_SMS_POLICY_BODY:Ljava/lang/String; = "premium-sms-policy"

.field private static final VDBG:Z


# instance fields
.field private final mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCheckPeriod:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private mMaxAllowed:I

.field private final mPatternFile:Ljava/io/File;

.field private mPatternFileLastModified:J

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private final mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    .line 127
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/sms/codes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    .line 136
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    .line 260
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "sms_outgoing_check_max_count"

    const/16 v3, 0x1e

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    .line 267
    const-string v2, "sms_outgoing_check_interval_ms"

    const v3, 0xea60

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "sms_short_code_confirmation"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5b

    :goto_4b
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    .line 277
    return-void

    .line 271
    :cond_5b
    const/4 v1, 0x0

    goto :goto_4b
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SmsUsageMonitor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SmsUsageMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/SmsUsageMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    return-void
.end method

.method private static checkCallerIsSystemOrPhoneApp()V
    .registers 5

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 606
    .local v1, uid:I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 607
    .local v0, appId:I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_12

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_12

    if-nez v1, :cond_13

    .line 608
    :cond_12
    return-void

    .line 610
    :cond_13
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed call for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 7
    .parameter "pkg"

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 589
    .local v2, uid:I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_e

    if-nez v2, :cond_f

    .line 602
    :cond_e
    return-void

    .line 593
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 595
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_e

    .line 596
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_53} :catch_53

    .line 599
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_53
    move-exception v1

    .line 600
    .local v1, re:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .registers 9
    .parameter "country"

    .prologue
    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, patternReader:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 288
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_52
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_9} :catch_3a

    .line 289
    .end local v2           #patternReader:Ljava/io/FileReader;
    .local v3, patternReader:Ljava/io/FileReader;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 290
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 291
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_67
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_13} :catch_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_6a

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 298
    if-eqz v3, :cond_21

    .line 300
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_61

    :cond_21
    :goto_21
    move-object v2, v3

    .line 304
    .end local v3           #patternReader:Ljava/io/FileReader;
    .restart local v2       #patternReader:Ljava/io/FileReader;
    :goto_22
    return-object v4

    .line 292
    :catch_23
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_24
    :try_start_24
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Short Code Pattern File not found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_52

    .line 297
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 298
    if-eqz v2, :cond_38

    .line 300
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_63

    .line 304
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_38
    :goto_38
    const/4 v4, 0x0

    goto :goto_22

    .line 294
    :catch_3a
    move-exception v0

    .line 295
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3b
    :try_start_3b
    const-string v4, "SmsUsageMonitor"

    const-string v5, "XML parser exception reading short code pattern file"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_52

    .line 297
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 298
    if-eqz v2, :cond_38

    .line 300
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_38

    .line 301
    :catch_50
    move-exception v4

    goto :goto_38

    .line 297
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_52
    move-exception v4

    :goto_53
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 298
    if-eqz v2, :cond_60

    .line 300
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_65

    .line 301
    :cond_60
    :goto_60
    throw v4

    .end local v2           #patternReader:Ljava/io/FileReader;
    .restart local v3       #patternReader:Ljava/io/FileReader;
    :catch_61
    move-exception v5

    goto :goto_21

    .end local v3           #patternReader:Ljava/io/FileReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #patternReader:Ljava/io/FileReader;
    :catch_63
    move-exception v4

    goto :goto_38

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_65
    move-exception v5

    goto :goto_60

    .line 297
    .end local v2           #patternReader:Ljava/io/FileReader;
    .restart local v3       #patternReader:Ljava/io/FileReader;
    :catchall_67
    move-exception v4

    move-object v2, v3

    .end local v3           #patternReader:Ljava/io/FileReader;
    .restart local v2       #patternReader:Ljava/io/FileReader;
    goto :goto_53

    .line 294
    .end local v2           #patternReader:Ljava/io/FileReader;
    .restart local v3       #patternReader:Ljava/io/FileReader;
    :catch_6a
    move-exception v0

    move-object v2, v3

    .end local v3           #patternReader:Ljava/io/FileReader;
    .restart local v2       #patternReader:Ljava/io/FileReader;
    goto :goto_3b

    .line 292
    .end local v2           #patternReader:Ljava/io/FileReader;
    .restart local v3       #patternReader:Ljava/io/FileReader;
    :catch_6d
    move-exception v0

    move-object v2, v3

    .end local v3           #patternReader:Ljava/io/FileReader;
    .restart local v2       #patternReader:Ljava/io/FileReader;
    goto :goto_24
.end method

.method private getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .registers 5
    .parameter "country"

    .prologue
    .line 308
    const v0, 0x10f0010

    .line 309
    .local v0, id:I
    const/4 v1, 0x0

    .line 311
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 312
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    move-result-object v2

    .line 314
    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_17
    return-object v2

    :catchall_18
    move-exception v2

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1e
    throw v2
.end method

.method private getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .registers 14
    .parameter "parser"
    .parameter "country"

    .prologue
    const/4 v8, 0x0

    .line 321
    :try_start_1
    const-string v7, "shortcodes"

    invoke-static {p1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 324
    :cond_6
    :goto_6
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 325
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, element:Ljava/lang/String;
    if-nez v2, :cond_18

    .line 327
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Parsing pattern data found null"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #element:Ljava/lang/String;
    :goto_16
    move-object v7, v8

    .line 351
    :goto_17
    return-object v7

    .line 331
    .restart local v2       #element:Ljava/lang/String;
    :cond_18
    const-string v7, "shortcode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 332
    const/4 v7, 0x0

    const-string v9, "country"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, currentCountry:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 335
    const/4 v7, 0x0

    const-string v9, "pattern"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, pattern:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "premium"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, premium:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "free"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, free:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "standard"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, standard:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-direct {v7, v4, v5, v3, v6}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4e} :catch_71

    goto :goto_17

    .line 345
    .end local v0           #currentCountry:Ljava/lang/String;
    .end local v2           #element:Ljava/lang/String;
    .end local v3           #free:Ljava/lang/String;
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #premium:Ljava/lang/String;
    .end local v6           #standard:Ljava/lang/String;
    :catch_4f
    move-exception v1

    .line 346
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "XML parser exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 342
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #element:Ljava/lang/String;
    :cond_58
    :try_start_58
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_70} :catch_4f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_70} :catch_71

    goto :goto_6

    .line 347
    .end local v2           #element:Ljava/lang/String;
    :catch_71
    move-exception v1

    .line 348
    .local v1, e:Ljava/io/IOException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "I/O exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .registers 13
    .parameter
    .parameter "smsWaiting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, sent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 634
    .local v2, ct:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v4

    sub-long v0, v6, v8

    .line 638
    .local v0, beginCheckPeriod:J
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-gez v4, :cond_2a

    .line 639
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    .line 642
    :cond_2a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    iget v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    if-gt v4, v6, :cond_3e

    .line 643
    const/4 v3, 0x0

    .local v3, i:I
    :goto_34
    if-ge v3, p2, :cond_3c

    .line 644
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 646
    :cond_3c
    const/4 v4, 0x1

    .line 648
    .end local v3           #i:I
    :goto_3d
    return v4

    :cond_3e
    move v4, v5

    goto :goto_3d
.end method

.method private loadPremiumSmsPolicyDb()V
    .registers 12

    .prologue
    .line 443
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v8

    .line 444
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_43

    .line 445
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/misc/sms"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, dir:Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "premium_sms_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    .line 448
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_f3

    .line 450
    const/4 v3, 0x0

    .line 452
    .local v3, infile:Ljava/io/FileInputStream;
    :try_start_22
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 453
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 454
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 456
    const-string v7, "premium-sms-policy"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 459
    :goto_35
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 461
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_3b} :catch_65
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3b} :catch_78
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_3b} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_3b} :catch_da

    move-result-object v2

    .line 462
    .local v2, element:Ljava/lang/String;
    if-nez v2, :cond_45

    .line 489
    if-eqz v3, :cond_43

    .line 491
    :try_start_40
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_f6

    .line 497
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #element:Ljava/lang/String;
    .end local v3           #infile:Ljava/io/FileInputStream;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_43
    :goto_43
    :try_start_43
    monitor-exit v8
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_f3

    .line 498
    return-void

    .line 464
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #element:Ljava/lang/String;
    .restart local v3       #infile:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_45
    :try_start_45
    const-string v7, "package"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 465
    const/4 v7, 0x0

    const-string v9, "name"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "sms-policy"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, policy:Ljava/lang/String;
    if-nez v4, :cond_6e

    .line 468
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Error: missing package name attribute"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_64} :catch_78
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_64} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_64} :catch_da

    goto :goto_35

    .line 480
    .end local v2           #element:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #policy:Ljava/lang/String;
    :catch_65
    move-exception v7

    .line 489
    if-eqz v3, :cond_43

    .line 491
    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_43

    .line 492
    :catch_6c
    move-exception v7

    goto :goto_43

    .line 469
    .restart local v2       #element:Ljava/lang/String;
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #policy:Ljava/lang/String;
    :cond_6e
    if-nez v6, :cond_88

    .line 470
    :try_start_70
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Error: missing package policy attribute"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_77} :catch_65
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_77} :catch_78
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_77} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_77} :catch_da

    goto :goto_35

    .line 482
    .end local v2           #element:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #policy:Ljava/lang/String;
    :catch_78
    move-exception v1

    .line 483
    .local v1, e:Ljava/io/IOException;
    :try_start_79
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to read premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_ec

    .line 489
    if-eqz v3, :cond_43

    .line 491
    :try_start_82
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_43

    .line 492
    :catch_86
    move-exception v7

    goto :goto_43

    .line 472
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #element:Ljava/lang/String;
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #policy:Ljava/lang/String;
    :cond_88
    :try_start_88
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_95} :catch_96
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_95} :catch_65
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_95} :catch_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_95} :catch_da

    goto :goto_35

    .line 473
    :catch_96
    move-exception v1

    .line 474
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_97
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: non-numeric policy type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_97 .. :try_end_af} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_af} :catch_65
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_af} :catch_78
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_af} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_af} :catch_da

    goto :goto_35

    .line 484
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #element:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #policy:Ljava/lang/String;
    :catch_b0
    move-exception v1

    .line 485
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :try_start_b1
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to parse premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_ec

    .line 489
    if-eqz v3, :cond_43

    .line 491
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_43

    .line 492
    :catch_be
    move-exception v7

    goto :goto_43

    .line 477
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #element:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_c0
    :try_start_c0
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_c0 .. :try_end_d8} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_d8} :catch_65
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_d8} :catch_78
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_d8} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_d8} :catch_da

    goto/16 :goto_35

    .line 486
    .end local v2           #element:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_da
    move-exception v1

    .line 487
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_db
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to parse premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e2
    .catchall {:try_start_db .. :try_end_e2} :catchall_ec

    .line 489
    if-eqz v3, :cond_43

    .line 491
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e9

    goto/16 :goto_43

    .line 492
    :catch_e9
    move-exception v7

    goto/16 :goto_43

    .line 489
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_ec
    move-exception v7

    if-eqz v3, :cond_f2

    .line 491
    :try_start_ef
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f9

    .line 493
    :cond_f2
    :goto_f2
    :try_start_f2
    throw v7

    .line 497
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #infile:Ljava/io/FileInputStream;
    :catchall_f3
    move-exception v7

    monitor-exit v8
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f3

    throw v7

    .line 492
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #element:Ljava/lang/String;
    .restart local v3       #infile:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_f6
    move-exception v7

    goto/16 :goto_43

    .end local v2           #element:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_f9
    move-exception v9

    goto :goto_f2
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 652
    const-string v0, "SmsUsageMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public static mergeShortCodeCategories(II)I
    .registers 2
    .parameter "type1"
    .parameter "type2"

    .prologue
    .line 95
    if-le p0, p1, :cond_3

    .line 96
    .end local p0
    :goto_2
    return p0

    .restart local p0
    :cond_3
    move p0, p1

    goto :goto_2
.end method

.method private removeExpiredTimestamps()V
    .registers 10

    .prologue
    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v7, v7

    sub-long v0, v5, v7

    .line 620
    .local v0, beginCheckPeriod:J
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v6

    .line 621
    :try_start_c
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 622
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 623
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 624
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 625
    .local v4, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gez v5, :cond_16

    .line 626
    :cond_42
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 629
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    .end local v4           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_46
    move-exception v5

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_46

    throw v5

    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_49
    :try_start_49
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    .line 630
    return-void
.end method

.method private writePremiumSmsPolicyDb()V
    .registers 10

    .prologue
    .line 505
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v6

    .line 506
    const/4 v3, 0x0

    .line 508
    .local v3, outfile:Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 510
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 511
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 513
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 515
    const/4 v5, 0x0

    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 518
    .local v4, policy:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    const/4 v7, 0x0

    const-string v8, "sms-policy"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_82
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_61} :catch_62

    goto :goto_2d

    .line 528
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #policy:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_62
    move-exception v0

    .line 529
    .local v0, e:Ljava/io/IOException;
    :try_start_63
    const-string v5, "SmsUsageMonitor"

    const-string v7, "Unable to write premium SMS policy database"

    invoke-static {v5, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    if-eqz v3, :cond_71

    .line 531
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 534
    .end local v0           #e:Ljava/io/IOException;
    :cond_71
    :goto_71
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_63 .. :try_end_72} :catchall_82

    .line 535
    return-void

    .line 524
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_73
    const/4 v5, 0x0

    :try_start_74
    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 527
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_82
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_81} :catch_62

    goto :goto_71

    .line 534
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_82
    move-exception v5

    :try_start_83
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v5
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .registers 6
    .parameter "appName"
    .parameter "smsWaiting"

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v2

    .line 371
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 374
    .local v0, sentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_1a

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #sentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .restart local v0       #sentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_1a
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 380
    .end local v0           #sentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "destAddress"
    .parameter "countryIso"

    .prologue
    const/4 v0, 0x0

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    monitor-enter v1

    .line 400
    :try_start_4
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 402
    monitor-exit v1

    .line 432
    :goto_b
    return v0

    .line 405
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_19

    .line 407
    monitor-exit v1

    goto :goto_b

    .line 435
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0

    .line 410
    :cond_19
    if-eqz p2, :cond_43

    .line 411
    :try_start_1b
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_43

    .line 413
    :cond_33
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 415
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 420
    :goto_41
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    .line 424
    :cond_43
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-eqz v2, :cond_56

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_b

    .line 418
    :cond_4f
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    goto :goto_41

    .line 428
    :cond_56
    const-string v2, "SmsUsageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No patterns for \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": using generic short code rule"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_7e

    .line 430
    const/4 v0, 0x3

    monitor-exit v1

    goto :goto_b

    .line 432
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_1b .. :try_end_7f} :catchall_16

    goto :goto_b
.end method

.method dispose()V
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 357
    return-void
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 5
    .parameter "packageName"

    .prologue
    .line 549
    invoke-static {p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v2

    .line 551
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 552
    .local v0, policy:Ljava/lang/Integer;
    if-nez v0, :cond_13

    .line 553
    const/4 v1, 0x0

    monitor-exit v2

    .line 555
    :goto_12
    return v1

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_12

    .line 557
    .end local v0           #policy:Ljava/lang/Integer;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 6
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 570
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    .line 571
    const/4 v0, 0x1

    if-lt p2, v0, :cond_9

    const/4 v0, 0x3

    if-le p2, v0, :cond_22

    .line 573
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SMS permission type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v1

    .line 576
    :try_start_25
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_3d

    .line 579
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 585
    return-void

    .line 577
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method
