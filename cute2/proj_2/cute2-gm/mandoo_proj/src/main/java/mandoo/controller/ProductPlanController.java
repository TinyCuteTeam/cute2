package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ProductPlanDTO;
import mandoo.Service.ProductPlanService;

@WebServlet("/ProductPlan")
public class ProductPlanController extends HttpServlet {

	ProductPlanService productplanservice = new ProductPlanService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet 실행");
		ProductPlanService productplan = new ProductPlanService();

		List<ProductPlanDTO> plan = productplan.getallPlan();
		request.setAttribute("plan", plan);

		request.getRequestDispatcher("/HTML/생산계획.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("/plan doPost 실행");

		String action = request.getParameter("action");

		if ("add".equals(action)) {
			ProductPlanDTO plan = new ProductPlanDTO();

			String Planid = "P001";
			plan.setPlanid(Planid);

			plan.setPlancontents("plancontents");
			plan.setPlandate("plandate");
			plan.setPlancount("plancount");
			plan.setPlanname("planname");

			// 여기서부터 확인
			productplanservice.productplan(plan);
		}

		response.sendRedirect("/mandoo/productplan");

	}

}
