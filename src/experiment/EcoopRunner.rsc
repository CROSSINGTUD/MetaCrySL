module experiment::EcoopRunner

import generator::Main; 

public void run() {

  execute(|file:///mcsl/MetaCrySL/samples/jca/android/config/Android0108.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android/config/Android0116.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android/config/Android25plus.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android-cc/config/Android0108.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android-cc/config/Android0116.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android-cc/config/Android25plus.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android-bsi/config/Android0108.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android-bsi/config/Android0116.config|);	
  execute(|file:///mcsl/MetaCrySL/samples/jca/android-bsi/config/Android25plus.config|);	

} 