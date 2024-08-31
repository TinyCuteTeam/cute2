package mandoo.service;

import java.util.List;

import mandoo.DAO.ErrorDAO;
import mandoo.DTO.ErrorDTO;

public class ErrorService {
    private ErrorDAO errorDAO = new ErrorDAO();

    public List<ErrorDTO> getAllErrors() throws Exception {
        return errorDAO.getAllErrors();
    }

    public void addError(ErrorDTO error) throws Exception {
        errorDAO.addError(error);
    }

    public void updateError(ErrorDTO error) throws Exception {
        errorDAO.updateError(error);
    }

    public void deleteError(String errorId) throws Exception {
        errorDAO.deleteError(errorId);
    }
}
