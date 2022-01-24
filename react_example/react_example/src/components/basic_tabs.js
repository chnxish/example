import * as React from 'react';
import PropTypes from 'prop-types';
import Tabs from '@mui/material/Tabs';
import Tab from '@mui/material/Tab';
import Typography from '@mui/material/Typography';
import Box from '@mui/material/Box';

import ClickCounter from './click_counter';
import ControlPanel from './control_panel';
import ClickMe from './click_me';
import ClickMeHook from './click_me_hook';


function TabPanel(props) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role='tabpanel'
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          <Typography>{children}</Typography>
        </Box>
      )}
    </div>
  );
}

TabPanel.propTypes = {
  children: PropTypes.node,
  index: PropTypes.number.isRequired,
  value: PropTypes.number.isRequired,
};

function a11yProps(index) {
  return {
    id: `simple-tab-${index}`,
    'aria-controls': `simple-tabpanel-${index}`,
  };
}

export default function BasicTabs() {
  const [value, setValue] = React.useState(0);

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  return (
    <Box sx={{ width: '100%' }}>
      <Box sx={{ borderBottom: 1, borderColor: 'divider', bgcolor: 'backgroudn.paper' }}>
        <Tabs value={value} onChange={handleChange} aria-label='basic tabs example'>
          <Tab label='click_counter' {...a11yProps(0)} />
          <Tab label='control_panel' {...a11yProps(1)} />
          <Tab label='click_me' {...a11yProps(2)} />
          <Tab label='click_me_hook' {...a11yProps(3)} />
        </Tabs>
      </Box>
      <TabPanel value={value} index={0}>
        <ClickCounter />
      </TabPanel>
      <TabPanel value={value} index={1}>
        <ControlPanel />
      </TabPanel>
      <TabPanel value={value} index={2}>
        <ClickMe />
      </TabPanel>
      <TabPanel value={value} index={3}>
        <ClickMeHook />
      </TabPanel>
    </Box>
  );
}
