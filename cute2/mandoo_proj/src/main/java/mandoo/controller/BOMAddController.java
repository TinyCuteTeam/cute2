package mandoo.controller;

import mandoo.DTO.BOMDTO;
import mandoo.DTO.ItemDTO;
import mandoo.service.BOMService;
import mandoo.service.ItemService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/bom/add")
public class BOMAddController extends HttpServlet {
    private BOMService bomService = new BOMService();
    private ItemService itemService = new ItemService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 다음 BOM ID를 생성
            String nextBomId = bomService.getNextBomId();
            request.setAttribute("nextBomId", nextBomId);

            // 품목 목록을 가져옴
            List<ItemDTO> itemList = itemService.getAllItems();
            request.setAttribute("itemList", itemList);

            // JSP로 포워드
            request.getRequestDispatcher("/HTML/BOM관리_제품추가.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 폼 데이터에서 BOM 정보를 추출
            String bomId = request.getParameter("bomId");
            String[] itemCodes = request.getParameterValues("itemCode");
            String[] bomCounts = request.getParameterValues("bomCount");
            String[] bomUnits = request.getParameterValues("bomUnit");
            String[] bomEtcs = request.getParameterValues("bomEtc");

            // BOM 추가
            if (itemCodes != null) {
                for (int i = 0; i < itemCodes.length; i++) {
                    BOMDTO bom = new BOMDTO();
                    bom.setBomId(bomId);
                    bom.setItemCode(itemCodes[i]);
                    bom.setBomCount(Integer.parseInt(bomCounts[i]));
                    bom.setBomUnit(bomUnits[i]);
                    bom.setBomEtc(bomEtcs[i]);

                    bomService.addBOM(bom);  // BOM을 데이터베이스에 추가
                }
            }

            // 추가 후 BOM 상세 페이지로 리다이렉트
            response.sendRedirect(request.getContextPath() + "/BOM?bomId=" + bomId);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
