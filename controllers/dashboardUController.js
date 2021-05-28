exports.getDashboardUPage = (req, res) => {
    // console.log("req.session :", req.session.user)
    const user = req.session.user
    return res.render('dashboardU',{user} )
  }
    exports.postdashboardUPage = async (req, res) => {
      // hiba's test 
      //) => {
              
        try {
            console.log("Asd  :",req.body.firstname);
            const user = await querysql('UPDATE user SET firstname = ?, lastname = ? WHERE email = ?', 
            [
              req.body.firstname,
              req.body.lastname,
              req.body.email
            ],(err, result) => {
              if(err) {
                req.flash("message", `Il y a une erreur ${err}`);
                return res.redirect('/dashboardU/dashboardU')
              }
            req.flash("message", "modification  avec succès ! Vous pouvez vous connecter.");
            return res.redirect('/auth/login')
          })
        } catch (err) {
          res.status(400).json({ message: err })
        }
      
      //} 
      
      }