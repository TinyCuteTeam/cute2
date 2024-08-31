package mandoo.service;

import java.util.List;

import mandoo.DAO.WorkDAO;
import mandoo.DTO.WorkDTO;

public class WorkService {
    private WorkDAO workDAO = new WorkDAO();

    public List<WorkDTO> getWorksByPage(int page, int pageSize) throws Exception {
        return workDAO.getWorksByPage(page, pageSize);
    }

    public int getTotalWorks() throws Exception {
        return workDAO.getTotalWorks();
    }

    public void addWork(WorkDTO work) throws Exception {
        workDAO.addWork(work);
    }
}
