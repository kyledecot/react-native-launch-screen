import * as React from 'react';
import { useEffect } from 'react';
import { Platform, StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import LaunchScreen from 'react-native-launch-screen';

export default function App() {
  let onPress = () => {
    LaunchScreen.show();
    setTimeout(LaunchScreen.hide, 3000);
  }

  useEffect(onPress, []);

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
  },
});
