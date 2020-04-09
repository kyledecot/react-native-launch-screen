import * as React from 'react';
import { Platform, StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import LaunchScreen from 'react-native-launch-screen';

export default function App() {
  let show = () => {
    LaunchScreen.show((value) => {
      console.warn(value)

      setTimeout(() => LaunchScreen.hide((value) => {
        console.warn(value)
      }), 3000);
    })
  }

  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={show}>
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
  },
});
