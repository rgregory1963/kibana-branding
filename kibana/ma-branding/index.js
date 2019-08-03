
export default function (kibana) {
  return new kibana.Plugin({
   uiExports: {
     app: {
        title: 'MA Branding',
        order: -100,
        description: 'MA Branding',
        main: 'plugins/ma-branding/index.js',
        hidden: false
     }
    }
  });
};
