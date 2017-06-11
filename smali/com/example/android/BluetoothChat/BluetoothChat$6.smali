.class Lcom/example/android/BluetoothChat/BluetoothChat$6;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothChat;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$6;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$6;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->fff()V

    .line 1366
    return-void
.end method
