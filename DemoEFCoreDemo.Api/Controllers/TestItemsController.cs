using Microsoft.AspNetCore.Mvc;
using DemoEFCoreDemo.Api.Models;
using Microsoft.EntityFrameworkCore;

namespace DemoEFCoreDemo.Api.Controllers;

[Route("/test-item")]
public class TestItemsController : Controller
{
    private readonly TestContext _context;

    public TestItemsController(TestContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var result = await _context.TestItems.Select(i => i.Id).ToListAsync();

        if (result.Count == 0)
        {
            return NotFound();
        }

        return Ok(result);
    }
}