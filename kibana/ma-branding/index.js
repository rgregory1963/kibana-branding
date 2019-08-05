module.exports = function (kibana) {
  return new kibana.Plugin({
    uiExports: {
      hacks: [
        'plugins/ma-branding/index.js'
      ]
    },
  });
};
