.class final Landroid/app/ActivityThread$ProviderClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderClientRecord"
.end annotation


# instance fields
.field final mLocalProvider:Landroid/content/ContentProvider;

.field final mName:Ljava/lang/String;

.field final mProvider:Landroid/content/IContentProvider;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "provider"
    .parameter "localProvider"

    .prologue
    .line 283
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mName:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 286
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 287
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderClientRecord;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->removeDeadProvider(Ljava/lang/String;Landroid/content/IContentProvider;)V

    .line 291
    return-void
.end method