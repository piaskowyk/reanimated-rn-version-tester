import Animated, {
  useSharedValue,
  withTiming,
  useAnimatedStyle,
  withRepeat,
  interpolate
} from 'react-native-reanimated';
import { View, Button } from 'react-native';
import React from 'react';


const dummy = new Array(230).fill(1);
export default function App() {
  const val = useSharedValue(0);

    val.value = withRepeat(
      withTiming(1, { duration: 2000 + 4000 }),
      -1,
      true
    );

  const style = useAnimatedStyle(() => {
    return {
      transform: [
        { rotate: interpolate(val.value, [0, 1], [0, Math.PI * 2]) + "rad" },
        { translateX: interpolate(val.value, [0, 1], [0, 180]) },
      ],
    };
  });

  return (
    <View style={{ flex: 1, flexDirection: "row", flexWrap: "wrap" }}>
      {dummy.map((_, i) => {
        return (
          <Animated.View
            key={i}
            style={[
              {
                width: 35,
                height: 35,
                borderWidth: 1,
                backgroundColor: `hsl(${(360 / dummy.length) * i}, 100%, 40%)`,
              },
              style,
            ]}
          />
        );
      })}
    </View>
  );
}