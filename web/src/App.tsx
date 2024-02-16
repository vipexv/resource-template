import React, { useState } from "react";
import { useExitListener } from "./hooks/useExitListener";
import { useNuiEvent } from "./hooks/useNuiEvent";
import { debugData } from "./utils/debugData";

debugData([
  {
    action: "setVisible",
    data: true,
  },
]);

const App: React.FC = () => {
  const [visible, setVisible] = useState(false);

  useNuiEvent<boolean>("setVisible", setVisible);

  // Listening for an exit key, as of currently ["Escape"] only.
  useExitListener(setVisible);

  return (
    <div className="absolute top-2 right-2 font-main text-xl p-2 rounded-[2px] font-tesla bg-[#353542] text-white text-center">
      Testing.
    </div>
  );
};

export default App;
