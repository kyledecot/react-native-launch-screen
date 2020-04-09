import * as React from 'react';
import { Platform, StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import LaunchScreen from 'react-native-launch-screen';

const instructions = Platform.select({
  ios: `Press Cmd+R to reload,\nCmd+D or shake for dev menu`,
  android: `Double tap R on your keyboard to reload,\nShake or press menu button for dev menu`,
});

export default function App() {
  let onPress = () => {
    LaunchScreen.show()
    setTimeout(() => { LaunchScreen.hide()}, 3000)
  }

  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={onPress}>
        <Text>Show Launch Screen for 3 seconds</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
