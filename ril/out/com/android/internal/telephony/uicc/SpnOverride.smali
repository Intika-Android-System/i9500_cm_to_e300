.class public Lcom/android/internal/telephony/uicc/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"


# instance fields
.field private mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadSpnOverrides()V

    .line 45
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .parameter "closeable"

    .prologue
    .line 95
    if-eqz p1, :cond_5

    .line 97
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 100
    :cond_5
    :goto_5
    return-void

    .line 98
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private loadSpnOverrides()V
    .registers 12

    .prologue
    .line 56
    const/4 v6, 0x0

    .line 58
    .local v6, spnReader:Ljava/io/FileReader;
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/spn-conf.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v5, spnFile:Ljava/io/File;
    :try_start_c
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_11} :catch_73
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_92

    .line 63
    .end local v6           #spnReader:Ljava/io/FileReader;
    .local v7, spnReader:Ljava/io/FileReader;
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 64
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 66
    const-string v8, "spnOverrides"

    invoke-static {v4, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 69
    :goto_1d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 71
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, name:Ljava/lang/String;
    const-string v8, "spnOverride"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_29} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_29} :catch_b2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_29} :catch_af

    move-result v8

    if-nez v8, :cond_31

    .line 90
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/SpnOverride;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v7

    .line 92
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #spnReader:Ljava/io/FileReader;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    :goto_30
    return-void

    .line 76
    .end local v6           #spnReader:Ljava/io/FileReader;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #spnReader:Ljava/io/FileReader;
    :cond_31
    const/4 v8, 0x0

    :try_start_32
    const-string v9, "numeric"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, numeric:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "spn"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, data:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_44} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_44} :catch_b2
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_44} :catch_af

    goto :goto_1d

    .line 81
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_45
    move-exception v1

    move-object v6, v7

    .line 82
    .end local v7           #spnReader:Ljava/io/FileReader;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    :goto_47
    :try_start_47
    const-string v8, "SpnOverride"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "etc/spn-conf.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_8d

    .line 90
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_6f
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_30

    .line 85
    :catch_73
    move-exception v1

    .line 86
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_74
    :try_start_74
    const-string v8, "SpnOverride"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in spn-conf parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8d

    goto :goto_6f

    .line 90
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_8d
    move-exception v8

    :goto_8e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 87
    :catch_92
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    :goto_93
    :try_start_93
    const-string v8, "SpnOverride"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in spn-conf parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_93 .. :try_end_ab} :catchall_8d

    goto :goto_6f

    .line 90
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #spnReader:Ljava/io/FileReader;
    .restart local v7       #spnReader:Ljava/io/FileReader;
    :catchall_ac
    move-exception v8

    move-object v6, v7

    .end local v7           #spnReader:Ljava/io/FileReader;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    goto :goto_8e

    .line 87
    .end local v6           #spnReader:Ljava/io/FileReader;
    .restart local v7       #spnReader:Ljava/io/FileReader;
    :catch_af
    move-exception v1

    move-object v6, v7

    .end local v7           #spnReader:Ljava/io/FileReader;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    goto :goto_93

    .line 85
    .end local v6           #spnReader:Ljava/io/FileReader;
    .restart local v7       #spnReader:Ljava/io/FileReader;
    :catch_b2
    move-exception v1

    move-object v6, v7

    .end local v7           #spnReader:Ljava/io/FileReader;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    goto :goto_74

    .line 81
    :catch_b5
    move-exception v1

    goto :goto_47
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .registers 3
    .parameter "carrier"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getSpn(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "carrier"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
