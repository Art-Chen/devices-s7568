.class public Landroid/content/ThemeDefine;
.super Ljava/lang/Object;
.source "ThemeDefine.java"


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.THEME_CHANGED"

.field public static final BOUNDARY_AN:I = 0x1

.field public static final BOUNDARY_VALUE:I = 0x70000000

.field public static final BOUNDARY_YI:I = 0x5

.field public static final CONFIG_THEME:I = -0x80000000

.field public static final FILE_COLOR:Ljava/lang/String; = "res/values/colors.xml"

.field public static final FILE_CONFIG:Ljava/lang/String; = "res/values/configs.xml"

.field public static final FILE_VALUES:Ljava/lang/String; = "values/"

.field private static IconPath:Ljava/util/HashMap; = null
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

.field public static final OVL_PATH:Ljava/lang/String; = "/system/etc/baidu/theme"

.field public static final TAG_BAIDU_THEME:Ljava/lang/String; = "Baidu-Theme"

.field public static final TAG_COLOR:Ljava/lang/String; = "color"

.field public static final TAG_CONFIG:Ljava/lang/String; = "config"

.field public static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_RESOURCES:Ljava/lang/String; = "resources"

.field public static final THEME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field public static final THEME_DIALPAD:Ljava/lang/String; = "com.baidu.dialpad"

.field public static final THEME_FRAMEWORK:Ljava/lang/String; = "framework-res"

.field public static final THEME_FRAMEWORK_YI:Ljava/lang/String; = "framework-yi-res"

.field public static final THEME_ICONS:Ljava/lang/String; = "icons"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values.xml"

.field private static iconReplaceMap:Ljava/util/HashMap;
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

.field private static replaceLabelMap:Ljava/util/HashMap;
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

.field private static speciallPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconPath()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    .line 255
    :cond_0
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {}, Landroid/content/ThemeDefine;->initIconPath()V

    .line 259
    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getIconReplaceMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    invoke-static {}, Landroid/content/ThemeDefine;->initIconRepalceMap()V

    .line 199
    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getReplacelabel()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    invoke-static {}, Landroid/content/ThemeDefine;->initRepalceLabel()V

    .line 209
    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static initIconPath()V
    .locals 3

    .prologue
    .line 215
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_contacts.png"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_phone.png"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_smsmms.png"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_camera.png"

    const-string v2, "com.baidu.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_contact.png"

    const-string/jumbo v2, "ic_launcher_shortcut_contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_directdial.png"

    const-string/jumbo v2, "ic_launcher_shortcut_directdial"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_directmessage.png"

    const-string/jumbo v2, "ic_launcher_shortcut_directmessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method private static initIconRepalceMap()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    .line 135
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 136
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.BaiduMap"

    const v2, 0x1080a98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.netdisk"

    const v2, 0x1080a9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox"

    const v2, 0x1080a9c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.browser.apps"

    const v2, 0x1080a96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.appsearch"

    const v2, 0x1080a99

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.voiceassistant"

    const v2, 0x1080a9d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.duoku.coolreader"

    const v2, 0x1080a9b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo360.launcher"

    const v2, 0x1080a94

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo360.mobilesafe_mtk6573"

    const v2, 0x1080a93

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.mobileim"

    const v2, 0x1080a95

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.huluxia.gametools"

    const v2, 0x1080a9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.chaozh.iReaderFree"

    const v2, 0x1080aa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.kugou.android"

    const v2, 0x1080aa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    const v2, 0x1080aa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.moji.mjweather"

    const v2, 0x1080aa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.immomo.momo"

    const v2, 0x1080aa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.pplive.androidphone"

    const v2, 0x1080aa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    const v2, 0x1080aa8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mobileqq"

    const v2, 0x1080aa7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qvod.player"

    const v2, 0x1080aa9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qzone"

    const v2, 0x1080aaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.renren.mobile.android"

    const v2, 0x1080aab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.shuqi.controller"

    const v2, 0x1080aad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.mediatek.StkSelection"

    const v2, 0x1080aae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.sohu.inputmethod.sogou"

    const v2, 0x1080aaf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.taobao.taobao"

    const v2, 0x1080ab0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.news"

    const v2, 0x1080ab1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqlive"

    const v2, 0x1080ab2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.UCMobile"

    const v2, 0x1080ab3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.wandoujia.phoenix2"

    const v2, 0x1080ab4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const v2, 0x1080ab5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.sina.weibo"

    const v2, 0x1080ab6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.snda.wifilocating"

    const v2, 0x1080ab7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string/jumbo v1, "im.yixin"

    const v2, 0x1080ab8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.youdao.dict"

    const v2, 0x1080ab9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.youku.phone"

    const v2, 0x1080aba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.eg.android.AlipayGphone"

    const v2, 0x1080abb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.security"

    const v2, 0x1080aac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.dolby.ds1appUI"

    const v2, 0x1080a9e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qiyi.video"

    const v2, 0x1080aa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baiyi_mobile.gamecenter"

    const v2, 0x1080a97

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private static initRepalceLabel()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    .line 186
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.browser.apps"

    const v2, 0x10407a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.appsearch"

    const v2, 0x10407a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const-string v1, "com.duoku.coolreader"

    const v2, 0x10407a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private static initSpecialSet()V
    .locals 2

    .prologue
    .line 228
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    const-string v1, "com.baidu.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public static isSpecialPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 238
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    .line 241
    :cond_0
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-static {}, Landroid/content/ThemeDefine;->initSpecialSet()V

    .line 244
    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
