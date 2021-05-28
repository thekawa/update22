exports.getSecuritePage = (req, res) => {
  const user = req.session.user

    return res.render("securite",{user});
  };