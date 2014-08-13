.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .param p2, "sdcardDirectory"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 759
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 760
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 761
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 762
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 763
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 764
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 766
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "ImportVCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 769
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 13
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 809
    iget-boolean v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_0

    .line 810
    new-instance v10, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 814
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 815
    .local v5, "files":[Ljava/io/File;
    if-nez v5, :cond_2

    .line 816
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "currentDirectoryPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".android_secure"

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 819
    .local v8, "secureDirectoryPath":Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 820
    const-string v10, "ImportVCardActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listFiles() returned null (directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v2    # "currentDirectoryPath":Ljava/lang/String;
    .end local v8    # "secureDirectoryPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 824
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 825
    .local v3, "file":Ljava/io/File;
    iget-boolean v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_3

    .line 826
    new-instance v10, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 828
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "canonicalPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 824
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 833
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 836
    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_1

    .line 837
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".vcf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 839
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "fileName":Ljava/lang/String;
    new-instance v9, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v4, v1, v10, v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 842
    .local v9, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 849
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 852
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 855
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 773
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$602(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 776
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 785
    iget-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 786
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$602(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 789
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1000(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 790
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1002(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 792
    iget-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v3, :cond_1

    .line 793
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v6, 0x7f0d0010

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 805
    :goto_1
    return-void

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 779
    .end local v1    # "e":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v1

    .line 780
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 794
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 795
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 797
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 798
    .local v2, "size":I
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .line 799
    .local v0, "context":Landroid/content/Context;
    if-nez v2, :cond_3

    .line 800
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v6, 0x7f0d000b

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 802
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1100(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    goto :goto_1
.end method
