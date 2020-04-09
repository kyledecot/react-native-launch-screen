import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
} from 'react-native';

import LaunchScreen from 'react-native-launch-screen';

const App = () => {
  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={onPress}>
        <Text>Show the Launch Screen for 3 seconds</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default App;
