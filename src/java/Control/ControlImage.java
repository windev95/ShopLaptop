/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import dao.ImageDAO;
import java.sql.SQLException;
import model.Image;

/**
 *
 * @author Khang
 */
public class ControlImage {
    Image image = new Image();
    ImageDAO imageDAO = new ImageDAO();
    public boolean createImage(Image p) throws SQLException
    {
        return imageDAO.insert(p);
    }
    
   
}
