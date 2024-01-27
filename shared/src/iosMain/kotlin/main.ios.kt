import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIViewController

actual fun getPlatformName(): String = "iOS"

var rootVC: UIViewController? = null

fun MainViewController(launchAVPlayerFn: () -> Unit): UIViewController {
   launchVideoPlayer = launchAVPlayerFn
   rootVC = ComposeUIViewController { App() }
   return rootVC!!
}